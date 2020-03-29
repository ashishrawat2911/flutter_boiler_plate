import 'package:flutter_boiler_plate/src/services/repository/app_repository.dart';
import 'package:flutter_boiler_plate/src/viewmodel/movie_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt appConfig = GetIt.I;

void setupAppConfig() {
  appConfig.registerFactory(() => AppRepository());

  //Register ViewModel
  appConfig.registerFactory(() => MovieViewModel(appConfig<AppRepository>()));
}
