import 'package:flutter/cupertino.dart';
import 'package:flutter_boiler_plate/src/model/network_model/response/movie_response.dart';
import 'package:flutter_boiler_plate/src/services/data/base_api_bloc.dart';
import 'package:flutter_boiler_plate/src/services/repository/app_repository.dart';

class MovieViewModel extends BaseApiBloc<List<Movie>> with ChangeNotifier {
  AppRepository appRepository;

  MovieViewModel(this.appRepository) {
    appRepository = AppRepository();
  }

  List<Movie> _movies;

  List<Movie> get movies => _movies;

  set movies(List<Movie> value) {
    _movies = value;
    notifyListeners();
  }

  fetchMovieList() async {
    startLoading('Fetching Popular Movies');
    try {
      _movies = await appRepository.fetchMovieList();
      addDataToStream(_movies);
    } catch (e) {
      addErrorToStream(e);
    }
  }

  void dispose() {
    super.dispose();
    streamDispose();
  }
}
