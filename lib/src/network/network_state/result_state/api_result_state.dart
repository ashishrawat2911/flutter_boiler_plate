import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result_state.freezed.dart';

@freezed
abstract class ApiResultState<T> with _$ApiResultState<T> {
  const factory ApiResultState.idle() = IdleState<T>;

  const factory ApiResultState.loading() = LoadingState<T>;

  const factory ApiResultState.reLoading() = ReLoading<T>;

  const factory ApiResultState.data({@required T data}) = OnDataState<T>;

  const factory ApiResultState.error({@required String error}) = ErrorState<T>;

  const factory ApiResultState.unNotifiedError(
      {@required T data, @required String error}) = UnNotifiedErrorState<T>;
}
