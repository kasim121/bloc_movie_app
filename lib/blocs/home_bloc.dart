import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_api_app/blocs/home_event.dart';
import 'package:bloc_api_app/blocs/home_state.dart';
import 'package:bloc_api_app/models/banner_model.dart';
import 'package:bloc_api_app/repos/home_repo.dart';

class AccBloc extends Bloc<AccEvent, AccState>{
 AccBloc() : super(AccInitial()){
on<AccInitialFetchEvent>(accInitialFetchEvent);
on<AccAddEvent>(accAddEvent);
 }
  

  FutureOr<void> accInitialFetchEvent(AccInitialFetchEvent event, Emitter<AccState> emit) async{
  emit(AccFetchingLoadingState());
   List<Datum> bannerList = await AccRepo.fetchBanerList();
   emit(AccFetchingSuccessfulState(bannerList: bannerList));
  }

  FutureOr<void> accAddEvent(AccAddEvent event, Emitter<AccState> emit) {


}

}