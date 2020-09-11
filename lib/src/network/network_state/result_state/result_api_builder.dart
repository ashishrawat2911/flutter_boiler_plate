import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/bloc/bloc.dart';
import 'package:flutter_boiler_plate/src/network/network_state/network_state.dart';

typedef ResultErrorWidget<NetworkExceptions> = Widget Function(
    NetworkExceptions error);
typedef ResultLoadingWidget = Widget Function(bool isReloading);
typedef ReturnWidget = Widget Function();
typedef ResultDataWidget<T> = Widget Function(T value);

class ResultStateBuilder<T> extends StatelessWidget {
  final ApiResultState<T> state;
  final ResultDataWidget<T> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ReturnWidget idleWidget;
  final ResultErrorWidget<String> errorWidget;
  final bool showLoadingInitially;

  ResultStateBuilder(
      {@required this.state,
      @required this.dataWidget,
      @required this.loadingWidget,
      @required this.errorWidget,
      this.idleWidget,
      this.showLoadingInitially = true});

  @override
  Widget build(BuildContext context) {
    return state.when(
      idle: () {
        if (idleWidget == null) {
          return Container();
        }
        return idleWidget();
      },
      loading: () {
        return loadingWidget(false);
      },
      data: (T value) {
        return dataWidget(value);
      },
      error: (String error) {
        return errorWidget(error);
      },
      unNotifiedError: (T data, String error) {
        return dataWidget(data);
      },
      reLoading: () {
        return loadingWidget(true);
      },
    );
  }
}

class ApiBlocBuilder<T extends Cubit<ApiResultState<S>>, S>
    extends StatelessWidget {
  final T cubit;
  final BlocWidgetListener<ApiResultState<S>> listener;
  final ResultDataWidget<S> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ReturnWidget idleWidget;
  final ResultErrorWidget<String> errorWidget;
  final bool showLoadingInitially;

  ApiBlocBuilder(
      {this.cubit,
      @required this.dataWidget,
      @required this.loadingWidget,
      @required this.errorWidget,
      this.idleWidget,
      this.showLoadingInitially = true,
      this.listener});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<T, ApiResultState<S>>(
      cubit: cubit,
      listener: listener ?? (context, state) {},
      builder: builder,
    );
  }

  Widget builder(context, state) {
    return state.when(
      idle: () {
        if (idleWidget == null) {
          return Container();
        }
        return idleWidget();
      },
      loading: () {
        return loadingWidget(false);
      },
      data: (S data) {
        return dataWidget(data);
      },
      error: (String error) {
        return errorWidget(error);
      },
      unNotifiedError: (S data, error) {
        return dataWidget(data);
      },
      reLoading: () {
        return loadingWidget(true);
      },
    );
  }
}

class ApiBlocListener<T extends Cubit<ApiResultState<S>>, S>
    extends StatelessWidget {
  final T cubit;
  final BlocWidgetListener<ApiResultState<S>> listener;
  final Widget child;

  ApiBlocListener({
    @required this.cubit,
    @required this.listener,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<T, ApiResultState<S>>(
      cubit: cubit,
      listener: listener,
      child: child,
    );
  }
}
