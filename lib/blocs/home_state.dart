import 'package:flutter/material.dart';

import '../models/banner_model.dart';

@immutable
abstract class AccState {}

abstract class AccActionState extends AccState {}

class AccInitial extends AccState {}

class AccFetchingLoadingState extends AccState {}

class AccFetchingErrorState extends AccState {}

class AccFetchingSuccessfulState extends AccState {
  final List<Datum> bannerList;
  AccFetchingSuccessfulState({
    required this.bannerList,
  });
}


class AccAdditionSuccessState extends AccActionState{}


class AccAdditionErrorState extends AccActionState{}