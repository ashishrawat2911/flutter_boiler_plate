import 'package:dio/dio.dart';
import 'package:flutter_boiler_plate/src/bloc/bloc.dart';
import 'package:flutter_boiler_plate/src/network/api_client/dio_client.dart';
import 'package:flutter_boiler_plate/src/res/res.dart';

import '../model/response/movie_response.dart';

class ApiRepository {
  DioClient dioClient;

  ApiRepository() {
    var dio = Dio();

    dioClient = DioClient(AppConfigs.apiBaseUrl, dio);
  }

  Future<ApiResult<List<Movie>>> fetchMovie(String _apiKey) async {
    try {
      var movieResponse = MovieResponse.fromJson(
        await dioClient.get("?api_key=$_apiKey", queryParameters: {}),
      );
      return ApiResult.success(data: movieResponse.results);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
