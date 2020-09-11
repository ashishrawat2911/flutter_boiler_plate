import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_boiler_plate/src/ui/screens/movie_screen.dart';

/*
* Run this command in terminal
* flutter packages pub run build_runner build
* */

/*
* Run this command in terminal to watch auto change
* flutter packages pub run build_runner watch
* */

@CupertinoAutoRouter(
  routes: [
    CupertinoRoute(page: MovieScreen, initial: true),
  ],
  routesClassName: "Routes",
)
class $AppRouter {}
