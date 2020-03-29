import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/src/services/network/exceptions/app_exceptions.dart';

handleError(
  Exception exception, {
  ValueChanged<String> onSocketException,
  ValueChanged<String> onBadRequestException,
  ValueChanged<String> onUnauthorisedException,
  ValueChanged<String> onForbiddenException,
  ValueChanged<String> onResourceNotFoundException,
  ValueChanged<String> onConflictException,
  ValueChanged<String> onInternalServerErrorException,
  ValueChanged<String> onFetchDataException,
  @required ValueChanged<String> onException,
}) {
  if (exception is SocketException && onSocketException != null) {
    onSocketException(exception.toString());
  } else if (exception is BadRequestException &&
      onBadRequestException != null) {
    onBadRequestException(exception.toString());
  } else if (exception is UnauthorisedException &&
      onUnauthorisedException != null) {
    onUnauthorisedException(exception.toString());
  } else if (exception is ForbiddenException && onForbiddenException != null) {
    onForbiddenException(exception.toString());
  } else if (exception is ResourceNotFoundException &&
      onSocketException != null) {
  } else if (exception is ConflictException && onConflictException != null) {
  } else if (exception is InternalServerErrorException &&
      onInternalServerErrorException != null) {
  } else if (exception is FetchDataException && onFetchDataException != null) {
  } else {
    onException(exception.toString());
  }
}
