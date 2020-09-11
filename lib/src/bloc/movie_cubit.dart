import 'package:flutter_boiler_plate/src/bloc/bloc.dart';
import 'package:flutter_boiler_plate/src/di/app_injector.dart';
import 'package:flutter_boiler_plate/src/model/model.dart';
import 'package:flutter_boiler_plate/src/repository/api_repository.dart';

class MovieCubit extends Cubit<ApiResultState<List<Movie>>> {
  ApiRepository apiRepo = AppInjector.get<ApiRepository>();

  MovieCubit() : super(ApiResultState.idle());

  fetchMovies() async {
    emit(ApiResultState.loading());
    var apiResult = await apiRepo.fetchMovie("_apiKey");

    apiResult.map(success: (Success<List<Movie>> value) {
      emit(ApiResultState.data(data: value.data));
    }, failure: (Failure<List<Movie>> value) {
      emit(ApiResultState.error(
          error: NetworkExceptions.getErrorMessage(value.error)));
    });
  }
}

class MovieCubitShort extends BaseApiCubit<List<Movie>> {
  fetchMovies() {
    getApiData(apiRepo.fetchMovie("_apiKey"));
  }
}
