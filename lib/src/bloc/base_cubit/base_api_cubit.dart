import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_boiler_plate/src/bloc/bloc.dart';
import 'package:flutter_boiler_plate/src/di/app_injector.dart';
import 'package:flutter_boiler_plate/src/network/network_state/network_state.dart';
import 'package:flutter_boiler_plate/src/repository/api_repository.dart';

abstract class BaseApiCubit<T> extends Cubit<ApiResultState<T>> {
  BaseApiCubit() : super(ApiResultState.idle());

  ApiRepository apiRepo = AppInjector.get<ApiRepository>();
  T _data;

  emitLoading() {
    emit(ApiResultState.loading());
  }

  emitData(T data) {
    _data = data;
    emit(ApiResultState<T>.data(data: data));
  }

  emitError(NetworkExceptions error) {
    emit(ApiResultState.error(error: NetworkExceptions.getErrorMessage(error)));
  }

  emitUnNotifiedError(NetworkExceptions error) {
    emit(ApiResultState.unNotifiedError(
        error: NetworkExceptions.getErrorMessage(error), data: _data));
  }

  getApiData(
    Future<ApiResult<T>> apiData, {
    bool isUnNotifiedError = false,
    VoidCallback onLoading,
    VoidCallback onError,
    ValueChanged<T> onData,
  }) async {
    if (onLoading != null) onLoading();
    emitLoading();
    (await apiData).map(success: (Success<T> value) {
      if (onData != null) onData(value.data);
      emitData(value.data);
    }, failure: (Failure<T> value) {
      if (onError != null) onError();
      if (isUnNotifiedError) {
        emitUnNotifiedError(value.error);
      } else {
        emitError(value.error);
      }
    });
  }

  updateData(
    Future<ApiResult<T>> apiData, {
    VoidCallback onError,
    ValueChanged<T> onData,
  }) async {
    (await apiData).map(success: (Success<T> value) {
      if (onData != null) onData(value.data);
      emitData(value.data);
    }, failure: (Failure<T> value) {
      emitUnNotifiedError(value.error);
    });
  }
}
