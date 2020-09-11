import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/bloc/bloc.dart';
import 'package:flutter_boiler_plate/src/bloc/movie_cubit.dart';
import 'package:flutter_boiler_plate/src/di/app_injector.dart';
import 'package:flutter_boiler_plate/src/model/model.dart';

class MovieScreen extends StatefulWidget {
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  var movieCubit = AppInjector.get<MovieCubit>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: BlocBuilder<MovieCubit, ApiResultState<List<Movie>>>(
        cubit: movieCubit,
        builder: (BuildContext context, ApiResultState<List<Movie>> state) {
          return ResultStateBuilder(
            state: state,
            dataWidget: (value) {
              return dataWidget(value);
            },
            errorWidget: (error) {
              return Center(child: Text(error));
            },
            loadingWidget: (isReloading) {
              return Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }

  Widget dataWidget(List<Movie> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 300,
          width: 300,
          child: Card(
            elevation: 1,
            child: Image.network(
              "https://image.tmdb.org/t/p/w342${data[index].posterPath}",
            ),
          ),
        );
      },
    );
  }
}
