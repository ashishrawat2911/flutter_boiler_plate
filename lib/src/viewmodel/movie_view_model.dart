import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/src/model/network_model/response/movie_response.dart';
import 'package:flutter_mvvm/src/services/data/base_api_bloc.dart';
import 'package:flutter_mvvm/src/services/repository/app_repository.dart';

class MovieViewModel extends BaseApiBloc<List<Movie>> with ChangeNotifier {
  AppRepository appRepository;

  MovieViewModel(this.appRepository) {
    appRepository = AppRepository();
  }

  List<Movie> movies;

  fetchMovieList() async {
    startLoading('Fetching Popular Movies');
    try {
      movies = await appRepository.fetchMovieList();
      addDataToStream(movies);
    } catch (e) {
      addErrorToStream(e);
    }
  }

  void dispose() {
    super.dispose();
    streamDispose();
  }
}
