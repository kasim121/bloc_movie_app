import 'package:flutter/material.dart';

@immutable
abstract class AccEvent{}
class AccInitialFetchEvent extends AccEvent{}
class AccAddEvent extends AccEvent{}