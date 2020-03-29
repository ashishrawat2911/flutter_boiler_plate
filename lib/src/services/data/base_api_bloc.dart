import 'dart:async';

import '../network/api_response.dart';

class BaseApiBloc<T> {
  StreamController _streamController =
      StreamController<ApiResponse<T>>.broadcast();

  StreamSink<ApiResponse<T>> get apiDataSink => _streamController.sink;

  Stream<ApiResponse<T>> get apiDataSinkStream => _streamController.stream;

  streamDispose() {
    _streamController?.close();
  }

  void startLoading(String message) {
    apiDataSink.add(ApiResponse.loading(message));
  }

  void addDataToStream(T data) {
    apiDataSink.add(ApiResponse.completed(data));
  }

  void addErrorToStream(Exception e) {
    print(e.toString());
    apiDataSink.add(ApiResponse.error(e));
  }
}
