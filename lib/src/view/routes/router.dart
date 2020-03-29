import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_boiler_plate/src/view/screens/movieScreen.dart';

/*
* Run this command in terminal
* flutter packages pub run build_runner build
* */

/*
* Run this command in terminal to watch auto change
* flutter packages pub run build_runner watch
* */

@MaterialAutoRouter()
class $Router {
  MovieScreen movieScreen;
}
