// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_tasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetTasksStateTearOff {
  const _$GetTasksStateTearOff();

  GetTasksInitial initial() {
    return const GetTasksInitial();
  }

  GetTasksLoading loading() {
    return const GetTasksLoading();
  }

  GetTasksSuccess success(List<TaskEntity> tasksList) {
    return GetTasksSuccess(
      tasksList,
    );
  }

  GetTasksErrorDetails error(String error) {
    return GetTasksErrorDetails(
      error,
    );
  }
}

/// @nodoc
const $GetTasksState = _$GetTasksStateTearOff();

/// @nodoc
mixin _$GetTasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasksList) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksInitial value) initial,
    required TResult Function(GetTasksLoading value) loading,
    required TResult Function(GetTasksSuccess value) success,
    required TResult Function(GetTasksErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTasksStateCopyWith<$Res> {
  factory $GetTasksStateCopyWith(
          GetTasksState value, $Res Function(GetTasksState) then) =
      _$GetTasksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetTasksStateCopyWithImpl<$Res>
    implements $GetTasksStateCopyWith<$Res> {
  _$GetTasksStateCopyWithImpl(this._value, this._then);

  final GetTasksState _value;
  // ignore: unused_field
  final $Res Function(GetTasksState) _then;
}

/// @nodoc
abstract class $GetTasksInitialCopyWith<$Res> {
  factory $GetTasksInitialCopyWith(
          GetTasksInitial value, $Res Function(GetTasksInitial) then) =
      _$GetTasksInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetTasksInitialCopyWithImpl<$Res>
    extends _$GetTasksStateCopyWithImpl<$Res>
    implements $GetTasksInitialCopyWith<$Res> {
  _$GetTasksInitialCopyWithImpl(
      GetTasksInitial _value, $Res Function(GetTasksInitial) _then)
      : super(_value, (v) => _then(v as GetTasksInitial));

  @override
  GetTasksInitial get _value => super._value as GetTasksInitial;
}

/// @nodoc

class _$GetTasksInitial implements GetTasksInitial {
  const _$GetTasksInitial();

  @override
  String toString() {
    return 'GetTasksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetTasksInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasksList) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksInitial value) initial,
    required TResult Function(GetTasksLoading value) loading,
    required TResult Function(GetTasksSuccess value) success,
    required TResult Function(GetTasksErrorDetails value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetTasksInitial implements GetTasksState {
  const factory GetTasksInitial() = _$GetTasksInitial;
}

/// @nodoc
abstract class $GetTasksLoadingCopyWith<$Res> {
  factory $GetTasksLoadingCopyWith(
          GetTasksLoading value, $Res Function(GetTasksLoading) then) =
      _$GetTasksLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetTasksLoadingCopyWithImpl<$Res>
    extends _$GetTasksStateCopyWithImpl<$Res>
    implements $GetTasksLoadingCopyWith<$Res> {
  _$GetTasksLoadingCopyWithImpl(
      GetTasksLoading _value, $Res Function(GetTasksLoading) _then)
      : super(_value, (v) => _then(v as GetTasksLoading));

  @override
  GetTasksLoading get _value => super._value as GetTasksLoading;
}

/// @nodoc

class _$GetTasksLoading implements GetTasksLoading {
  const _$GetTasksLoading();

  @override
  String toString() {
    return 'GetTasksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetTasksLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasksList) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksInitial value) initial,
    required TResult Function(GetTasksLoading value) loading,
    required TResult Function(GetTasksSuccess value) success,
    required TResult Function(GetTasksErrorDetails value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetTasksLoading implements GetTasksState {
  const factory GetTasksLoading() = _$GetTasksLoading;
}

/// @nodoc
abstract class $GetTasksSuccessCopyWith<$Res> {
  factory $GetTasksSuccessCopyWith(
          GetTasksSuccess value, $Res Function(GetTasksSuccess) then) =
      _$GetTasksSuccessCopyWithImpl<$Res>;
  $Res call({List<TaskEntity> tasksList});
}

/// @nodoc
class _$GetTasksSuccessCopyWithImpl<$Res>
    extends _$GetTasksStateCopyWithImpl<$Res>
    implements $GetTasksSuccessCopyWith<$Res> {
  _$GetTasksSuccessCopyWithImpl(
      GetTasksSuccess _value, $Res Function(GetTasksSuccess) _then)
      : super(_value, (v) => _then(v as GetTasksSuccess));

  @override
  GetTasksSuccess get _value => super._value as GetTasksSuccess;

  @override
  $Res call({
    Object? tasksList = freezed,
  }) {
    return _then(GetTasksSuccess(
      tasksList == freezed
          ? _value.tasksList
          : tasksList // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$GetTasksSuccess implements GetTasksSuccess {
  const _$GetTasksSuccess(this.tasksList);

  @override
  final List<TaskEntity> tasksList;

  @override
  String toString() {
    return 'GetTasksState.success(tasksList: $tasksList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetTasksSuccess &&
            const DeepCollectionEquality().equals(other.tasksList, tasksList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tasksList));

  @JsonKey(ignore: true)
  @override
  $GetTasksSuccessCopyWith<GetTasksSuccess> get copyWith =>
      _$GetTasksSuccessCopyWithImpl<GetTasksSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasksList) success,
    required TResult Function(String error) error,
  }) {
    return success(tasksList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
  }) {
    return success?.call(tasksList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tasksList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksInitial value) initial,
    required TResult Function(GetTasksLoading value) loading,
    required TResult Function(GetTasksSuccess value) success,
    required TResult Function(GetTasksErrorDetails value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetTasksSuccess implements GetTasksState {
  const factory GetTasksSuccess(List<TaskEntity> tasksList) = _$GetTasksSuccess;

  List<TaskEntity> get tasksList;
  @JsonKey(ignore: true)
  $GetTasksSuccessCopyWith<GetTasksSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTasksErrorDetailsCopyWith<$Res> {
  factory $GetTasksErrorDetailsCopyWith(GetTasksErrorDetails value,
          $Res Function(GetTasksErrorDetails) then) =
      _$GetTasksErrorDetailsCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$GetTasksErrorDetailsCopyWithImpl<$Res>
    extends _$GetTasksStateCopyWithImpl<$Res>
    implements $GetTasksErrorDetailsCopyWith<$Res> {
  _$GetTasksErrorDetailsCopyWithImpl(
      GetTasksErrorDetails _value, $Res Function(GetTasksErrorDetails) _then)
      : super(_value, (v) => _then(v as GetTasksErrorDetails));

  @override
  GetTasksErrorDetails get _value => super._value as GetTasksErrorDetails;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GetTasksErrorDetails(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTasksErrorDetails implements GetTasksErrorDetails {
  const _$GetTasksErrorDetails(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'GetTasksState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetTasksErrorDetails &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $GetTasksErrorDetailsCopyWith<GetTasksErrorDetails> get copyWith =>
      _$GetTasksErrorDetailsCopyWithImpl<GetTasksErrorDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasksList) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasksList)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksInitial value) initial,
    required TResult Function(GetTasksLoading value) loading,
    required TResult Function(GetTasksSuccess value) success,
    required TResult Function(GetTasksErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksInitial value)? initial,
    TResult Function(GetTasksLoading value)? loading,
    TResult Function(GetTasksSuccess value)? success,
    TResult Function(GetTasksErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetTasksErrorDetails implements GetTasksState {
  const factory GetTasksErrorDetails(String error) = _$GetTasksErrorDetails;

  String get error;
  @JsonKey(ignore: true)
  $GetTasksErrorDetailsCopyWith<GetTasksErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
