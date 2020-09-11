import 'package:flutter_boiler_plate/src/bloc/movie_cubit.dart';
import 'package:flutter_boiler_plate/src/repository/api_repository.dart';
import 'package:flutter_boiler_plate/src/repository/preference_repository.dart';
import 'package:get_it/get_it.dart';

GetIt _injector = GetIt.I;

class AppInjector {
  AppInjector._internal();

  static T get<T>({String instanceName, dynamic param1, dynamic param2}) =>
      _injector<T>(instanceName: instanceName, param1: param1, param2: param2);

  static void create() {
    _initCubits();
    _initRepos();
    _initNotifiers();
    _others();
  }

  static _initRepos() {
    _injector.registerLazySingleton(() => PreferenceRepository());
    _injector.registerLazySingleton(() => ApiRepository());
  }

  static _initCubits() {
    _injector.registerFactory(() => MovieCubit());
  }

  static void _initNotifiers() {}

  static void _others() {}

  static close() {
    _injector.reset();
  }
}
