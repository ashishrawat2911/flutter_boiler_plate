import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/model/network_model/response/movie_response.dart';
import 'package:flutter_boiler_plate/src/utils/utils.dart';
import 'package:flutter_boiler_plate/src/view/base_screen_mixin.dart';
import 'package:flutter_boiler_plate/src/view/base_view.dart';
import 'package:flutter_boiler_plate/src/view/common/api_stream_builder.dart';
import 'package:flutter_boiler_plate/src/viewmodel/movie_view_model.dart';

class MovieScreen extends StatefulWidget {
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> with BaseScreenMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuilding");
    return BaseView<MovieViewModel>(
      onModelReady: (MovieViewModel movieViewModel) {
        if (movieViewModel.movies == null) {
          movieViewModel.fetchMovieList();
        }
        onConnectionChange((value) {
          print(value);
          if (movieViewModel.movies == null && value) {
            movieViewModel.fetchMovieList();
          }
        });
      },
      builder:
          (BuildContext context, MovieViewModel movieViewModel, Widget child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: Text('Movie Mania',
                style: TextStyle(color: Colors.lightGreen, fontSize: 28)),
          ),
          backgroundColor: AppColors.white,
          body: RefreshIndicator(
              onRefresh: () => movieViewModel.fetchMovieList(),
              child: ApiStreamBuilder<List<Movie>>(
                stream: movieViewModel.apiDataSinkStream,
                loadingWidget: (value) {
                  return Loading(loadingMessage: value);
                },
                errorWidget: (value) {
                  print(value);
                  showToast(value.toString(), context);
                  return Error(
                    errorMessage: value.toString(),
                    onRetryPressed: () => movieViewModel.fetchMovieList(),
                  );
                },
                dataWidget: (value) {
                  return MovieList(movieList: value);
                },
              )),
        );
      },
    );
  }
}

class MovieList extends StatelessWidget {
  final List<Movie> movieList;

  const MovieList({Key key, this.movieList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: movieList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5 / 1.8,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.network(
                'https://image.tmdb.org/t/p/w342${movieList[index].posterPath}',
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
      },
    );
  }
}

class Error extends StatelessWidget {
  final String errorMessage;

  final Function onRetryPressed;

  const Error({Key key, this.errorMessage, this.onRetryPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          RaisedButton(
            color: Colors.lightGreen,
            child: Text('Retry', style: TextStyle(color: Colors.white)),
            onPressed: onRetryPressed,
          )
        ],
      ),
    );
  }
}

class Loading extends StatelessWidget {
  final String loadingMessage;

  const Loading({Key key, this.loadingMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loadingMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 24),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.lightGreen),
          ),
        ],
      ),
    );
  }
}
