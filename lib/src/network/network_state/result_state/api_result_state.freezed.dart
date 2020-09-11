// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'api_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ApiResultStateTearOff {
  const _$ApiResultStateTearOff();

  IdleState<T> idle<T>() {
    return IdleState<T>();
  }

  LoadingState<T> loading<T>() {
    return LoadingState<T>();
  }

  ReLoading<T> reLoading<T>() {
    return ReLoading<T>();
  }

  OnDataState<T> data<T>({@required T data}) {
    return OnDataState<T>(
      data: data,
    );
  }

  ErrorState<T> error<T>({@required String error}) {
    return ErrorState<T>(
      error: error,
    );
  }

  UnNotifiedErrorState<T> unNotifiedError<T>(
      {@required T data, @required String error}) {
    return UnNotifiedErrorState<T>(
      data: data,
      error: error,
    );
  }
}

// ignore: unused_element
const $ApiResultState = _$ApiResultStateTearOff();

mixin _$ApiResultState<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(IdleState<T> value),
    @required Result loading(LoadingState<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(OnDataState<T> value),
    @required Result error(ErrorState<T> value),
    @required Result unNotifiedError(UnNotifiedErrorState<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(IdleState<T> value),
    Result loading(LoadingState<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(OnDataState<T> value),
    Result error(ErrorState<T> value),
    Result unNotifiedError(UnNotifiedErrorState<T> value),
    @required Result orElse(),
  });
}

abstract class $ApiResultStateCopyWith<T, $Res> {
  factory $ApiResultStateCopyWith(
          ApiResultState<T> value, $Res Function(ApiResultState<T>) then) =
      _$ApiResultStateCopyWithImpl<T, $Res>;
}

class _$ApiResultStateCopyWithImpl<T, $Res>
    implements $ApiResultStateCopyWith<T, $Res> {
  _$ApiResultStateCopyWithImpl(this._value, this._then);

  final ApiResultState<T> _value;
  // ignore: unused_field
  final $Res Function(ApiResultState<T>) _then;
}

abstract class $IdleStateCopyWith<T, $Res> {
  factory $IdleStateCopyWith(
          IdleState<T> value, $Res Function(IdleState<T>) then) =
      _$IdleStateCopyWithImpl<T, $Res>;
}

class _$IdleStateCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $IdleStateCopyWith<T, $Res> {
  _$IdleStateCopyWithImpl(
      IdleState<T> _value, $Res Function(IdleState<T>) _then)
      : super(_value, (v) => _then(v as IdleState<T>));

  @override
  IdleState<T> get _value => super._value as IdleState<T>;
}

class _$IdleState<T> with DiagnosticableTreeMixin implements IdleState<T> {
  const _$IdleState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResultState<$T>.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ApiResultState<$T>.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IdleState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(IdleState<T> value),
    @required Result loading(LoadingState<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(OnDataState<T> value),
    @required Result error(ErrorState<T> value),
    @required Result unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(IdleState<T> value),
    Result loading(LoadingState<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(OnDataState<T> value),
    Result error(ErrorState<T> value),
    Result unNotifiedError(UnNotifiedErrorState<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleState<T> implements ApiResultState<T> {
  const factory IdleState() = _$IdleState<T>;
}

abstract class $LoadingStateCopyWith<T, $Res> {
  factory $LoadingStateCopyWith(
          LoadingState<T> value, $Res Function(LoadingState<T>) then) =
      _$LoadingStateCopyWithImpl<T, $Res>;
}

class _$LoadingStateCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $LoadingStateCopyWith<T, $Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState<T> _value, $Res Function(LoadingState<T>) _then)
      : super(_value, (v) => _then(v as LoadingState<T>));

  @override
  LoadingState<T> get _value => super._value as LoadingState<T>;
}

class _$LoadingState<T>
    with DiagnosticableTreeMixin
    implements LoadingState<T> {
  const _$LoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResultState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ApiResultState<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(IdleState<T> value),
    @required Result loading(LoadingState<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(OnDataState<T> value),
    @required Result error(ErrorState<T> value),
    @required Result unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(IdleState<T> value),
    Result loading(LoadingState<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(OnDataState<T> value),
    Result error(ErrorState<T> value),
    Result unNotifiedError(UnNotifiedErrorState<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState<T> implements ApiResultState<T> {
  const factory LoadingState() = _$LoadingState<T>;
}

abstract class $ReLoadingCopyWith<T, $Res> {
  factory $ReLoadingCopyWith(
          ReLoading<T> value, $Res Function(ReLoading<T>) then) =
      _$ReLoadingCopyWithImpl<T, $Res>;
}

class _$ReLoadingCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $ReLoadingCopyWith<T, $Res> {
  _$ReLoadingCopyWithImpl(
      ReLoading<T> _value, $Res Function(ReLoading<T>) _then)
      : super(_value, (v) => _then(v as ReLoading<T>));

  @override
  ReLoading<T> get _value => super._value as ReLoading<T>;
}

class _$ReLoading<T> with DiagnosticableTreeMixin implements ReLoading<T> {
  const _$ReLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResultState<$T>.reLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResultState<$T>.reLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return reLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reLoading != null) {
      return reLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(IdleState<T> value),
    @required Result loading(LoadingState<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(OnDataState<T> value),
    @required Result error(ErrorState<T> value),
    @required Result unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return reLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(IdleState<T> value),
    Result loading(LoadingState<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(OnDataState<T> value),
    Result error(ErrorState<T> value),
    Result unNotifiedError(UnNotifiedErrorState<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reLoading != null) {
      return reLoading(this);
    }
    return orElse();
  }
}

abstract class ReLoading<T> implements ApiResultState<T> {
  const factory ReLoading() = _$ReLoading<T>;
}

abstract class $OnDataStateCopyWith<T, $Res> {
  factory $OnDataStateCopyWith(
          OnDataState<T> value, $Res Function(OnDataState<T>) then) =
      _$OnDataStateCopyWithImpl<T, $Res>;
  $Res call({T data});
}

class _$OnDataStateCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $OnDataStateCopyWith<T, $Res> {
  _$OnDataStateCopyWithImpl(
      OnDataState<T> _value, $Res Function(OnDataState<T>) _then)
      : super(_value, (v) => _then(v as OnDataState<T>));

  @override
  OnDataState<T> get _value => super._value as OnDataState<T>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(OnDataState<T>(
      data: data == freezed ? _value.data : data as T,
    ));
  }
}

class _$OnDataState<T> with DiagnosticableTreeMixin implements OnDataState<T> {
  const _$OnDataState({@required this.data}) : assert(data != null);

  @override
  final T data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResultState<$T>.data(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResultState<$T>.data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnDataState<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $OnDataStateCopyWith<T, OnDataState<T>> get copyWith =>
      _$OnDataStateCopyWithImpl<T, OnDataState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(IdleState<T> value),
    @required Result loading(LoadingState<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(OnDataState<T> value),
    @required Result error(ErrorState<T> value),
    @required Result unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(IdleState<T> value),
    Result loading(LoadingState<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(OnDataState<T> value),
    Result error(ErrorState<T> value),
    Result unNotifiedError(UnNotifiedErrorState<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class OnDataState<T> implements ApiResultState<T> {
  const factory OnDataState({@required T data}) = _$OnDataState<T>;

  T get data;
  $OnDataStateCopyWith<T, OnDataState<T>> get copyWith;
}

abstract class $ErrorStateCopyWith<T, $Res> {
  factory $ErrorStateCopyWith(
          ErrorState<T> value, $Res Function(ErrorState<T>) then) =
      _$ErrorStateCopyWithImpl<T, $Res>;
  $Res call({String error});
}

class _$ErrorStateCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $ErrorStateCopyWith<T, $Res> {
  _$ErrorStateCopyWithImpl(
      ErrorState<T> _value, $Res Function(ErrorState<T>) _then)
      : super(_value, (v) => _then(v as ErrorState<T>));

  @override
  ErrorState<T> get _value => super._value as ErrorState<T>;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ErrorState<T>(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

class _$ErrorState<T> with DiagnosticableTreeMixin implements ErrorState<T> {
  const _$ErrorState({@required this.error}) : assert(error != null);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResultState<$T>.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResultState<$T>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorState<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ErrorStateCopyWith<T, ErrorState<T>> get copyWith =>
      _$ErrorStateCopyWithImpl<T, ErrorState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(IdleState<T> value),
    @required Result loading(LoadingState<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(OnDataState<T> value),
    @required Result error(ErrorState<T> value),
    @required Result unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(IdleState<T> value),
    Result loading(LoadingState<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(OnDataState<T> value),
    Result error(ErrorState<T> value),
    Result unNotifiedError(UnNotifiedErrorState<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState<T> implements ApiResultState<T> {
  const factory ErrorState({@required String error}) = _$ErrorState<T>;

  String get error;
  $ErrorStateCopyWith<T, ErrorState<T>> get copyWith;
}

abstract class $UnNotifiedErrorStateCopyWith<T, $Res> {
  factory $UnNotifiedErrorStateCopyWith(UnNotifiedErrorState<T> value,
          $Res Function(UnNotifiedErrorState<T>) then) =
      _$UnNotifiedErrorStateCopyWithImpl<T, $Res>;
  $Res call({T data, String error});
}

class _$UnNotifiedErrorStateCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $UnNotifiedErrorStateCopyWith<T, $Res> {
  _$UnNotifiedErrorStateCopyWithImpl(UnNotifiedErrorState<T> _value,
      $Res Function(UnNotifiedErrorState<T>) _then)
      : super(_value, (v) => _then(v as UnNotifiedErrorState<T>));

  @override
  UnNotifiedErrorState<T> get _value => super._value as UnNotifiedErrorState<T>;

  @override
  $Res call({
    Object data = freezed,
    Object error = freezed,
  }) {
    return _then(UnNotifiedErrorState<T>(
      data: data == freezed ? _value.data : data as T,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

class _$UnNotifiedErrorState<T>
    with DiagnosticableTreeMixin
    implements UnNotifiedErrorState<T> {
  const _$UnNotifiedErrorState({@required this.data, @required this.error})
      : assert(data != null),
        assert(error != null);

  @override
  final T data;
  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResultState<$T>.unNotifiedError(data: $data, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResultState<$T>.unNotifiedError'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnNotifiedErrorState<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error);

  @override
  $UnNotifiedErrorStateCopyWith<T, UnNotifiedErrorState<T>> get copyWith =>
      _$UnNotifiedErrorStateCopyWithImpl<T, UnNotifiedErrorState<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return unNotifiedError(this.data, this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unNotifiedError != null) {
      return unNotifiedError(this.data, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(IdleState<T> value),
    @required Result loading(LoadingState<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(OnDataState<T> value),
    @required Result error(ErrorState<T> value),
    @required Result unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return unNotifiedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(IdleState<T> value),
    Result loading(LoadingState<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(OnDataState<T> value),
    Result error(ErrorState<T> value),
    Result unNotifiedError(UnNotifiedErrorState<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unNotifiedError != null) {
      return unNotifiedError(this);
    }
    return orElse();
  }
}

abstract class UnNotifiedErrorState<T> implements ApiResultState<T> {
  const factory UnNotifiedErrorState(
      {@required T data, @required String error}) = _$UnNotifiedErrorState<T>;

  T get data;
  String get error;
  $UnNotifiedErrorStateCopyWith<T, UnNotifiedErrorState<T>> get copyWith;
}
