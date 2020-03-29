import 'package:flutter_boiler_plate/src/model/network_model/response/movie_response.dart';

abstract class IAppRepository {
  Future<List<Movie>> fetchMovieList();

  void loginUser();

  void logoutUser();

  Future<bool> isLogged();
}
