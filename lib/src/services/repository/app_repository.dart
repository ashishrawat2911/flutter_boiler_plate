import 'package:flutter_boiler_plate/src/model/network_model/response/movie_response.dart';
import 'package:flutter_boiler_plate/src/services/data/sharedpref/constants/preferences.dart';
import 'package:flutter_boiler_plate/src/services/data/sharedpref/preference_connector.dart';
import 'package:flutter_boiler_plate/src/services/network/api_clients/rest_client.dart';
import 'package:flutter_boiler_plate/src/services/network/constants/endpoints.dart';
import 'package:flutter_boiler_plate/src/services/repository/repository_interfaces/app_repository.dart';

class AppRepository extends IAppRepository {
  final String _apiKey = "78b9f63937763a206bff26c070b94158";

  RestClient _helper = RestClient();

  PreferenceConnector preferenceConnector;

  AppRepository() {
    preferenceConnector = PreferenceConnector();
  }

  @override
  Future<List<Movie>> fetchMovieList() async {
    final response =
        await _helper.get("${Endpoints.moviesPopular}?api_key=$_apiKey");
    return MovieResponse.fromJson(response).results;
  }

  @override
  Future<bool> isLogged() {
    return preferenceConnector.getBool(PreferenceConstants.is_logged_in);
  }

  @override
  void loginUser() {
    preferenceConnector.setBool(PreferenceConstants.is_logged_in, true);
  }

  @override
  void logoutUser() {
    preferenceConnector.setBool(PreferenceConstants.is_logged_in, false);
  }
}
