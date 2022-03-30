// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateTaskStateTearOff {
  const _$UpdateTaskStateTearOff();

  UpdateTaskInitial initial() {
    return const UpdateTaskInitial();
  }

  UpdateTaskLoading loading() {
    return const UpdateTaskLoading();
  }

  UpdateTaskSuccess success() {
    return const UpdateTaskSuccess();
  }

  UpdateTaskErrorDetails error(String error) {
    return UpdateTaskErrorDetails(
      error,
    );
  }
}

/// @nodoc
const $UpdateTaskState = _$UpdateTaskStateTearOff();

/// @nodoc
mixin _$UpdateTaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskInitial value) initial,
    required TResult Function(UpdateTaskLoading value) loading,
    required TResult Function(UpdateTaskSuccess value) success,
    required TResult Function(UpdateTaskErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskStateCopyWith<$Res> {
  factory $UpdateTaskStateCopyWith(
          UpdateTaskState value, $Res Function(UpdateTaskState) then) =
      _$UpdateTaskStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateTaskStateCopyWithImpl<$Res>
    implements $UpdateTaskStateCopyWith<$Res> {
  _$UpdateTaskStateCopyWithImpl(this._value, this._then);

  final UpdateTaskState _value;
  // ignore: unused_field
  final $Res Function(UpdateTaskState) _then;
}

/// @nodoc
abstract class $UpdateTaskInitialCopyWith<$Res> {
  factory $UpdateTaskInitialCopyWith(
          UpdateTaskInitial value, $Res Function(UpdateTaskInitial) then) =
      _$UpdateTaskInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateTaskInitialCopyWithImpl<$Res>
    extends _$UpdateTaskStateCopyWithImpl<$Res>
    implements $UpdateTaskInitialCopyWith<$Res> {
  _$UpdateTaskInitialCopyWithImpl(
      UpdateTaskInitial _value, $Res Function(UpdateTaskInitial) _then)
      : super(_value, (v) => _then(v as UpdateTaskInitial));

  @override
  UpdateTaskInitial get _value => super._value as UpdateTaskInitial;
}

/// @nodoc

class _$UpdateTaskInitial implements UpdateTaskInitial {
  const _$UpdateTaskInitial();

  @override
  String toString() {
    return 'UpdateTaskState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateTaskInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(UpdateTaskInitial value) initial,
    required TResult Function(UpdateTaskLoading value) loading,
    required TResult Function(UpdateTaskSuccess value) success,
    required TResult Function(UpdateTaskErrorDetails value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskInitial implements UpdateTaskState {
  const factory UpdateTaskInitial() = _$UpdateTaskInitial;
}

/// @nodoc
abstract class $UpdateTaskLoadingCopyWith<$Res> {
  factory $UpdateTaskLoadingCopyWith(
          UpdateTaskLoading value, $Res Function(UpdateTaskLoading) then) =
      _$UpdateTaskLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateTaskLoadingCopyWithImpl<$Res>
    extends _$UpdateTaskStateCopyWithImpl<$Res>
    implements $UpdateTaskLoadingCopyWith<$Res> {
  _$UpdateTaskLoadingCopyWithImpl(
      UpdateTaskLoading _value, $Res Function(UpdateTaskLoading) _then)
      : super(_value, (v) => _then(v as UpdateTaskLoading));

  @override
  UpdateTaskLoading get _value => super._value as UpdateTaskLoading;
}

/// @nodoc

class _$UpdateTaskLoading implements UpdateTaskLoading {
  const _$UpdateTaskLoading();

  @override
  String toString() {
    return 'UpdateTaskState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateTaskLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(UpdateTaskInitial value) initial,
    required TResult Function(UpdateTaskLoading value) loading,
    required TResult Function(UpdateTaskSuccess value) success,
    required TResult Function(UpdateTaskErrorDetails value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskLoading implements UpdateTaskState {
  const factory UpdateTaskLoading() = _$UpdateTaskLoading;
}

/// @nodoc
abstract class $UpdateTaskSuccessCopyWith<$Res> {
  factory $UpdateTaskSuccessCopyWith(
          UpdateTaskSuccess value, $Res Function(UpdateTaskSuccess) then) =
      _$UpdateTaskSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateTaskSuccessCopyWithImpl<$Res>
    extends _$UpdateTaskStateCopyWithImpl<$Res>
    implements $UpdateTaskSuccessCopyWith<$Res> {
  _$UpdateTaskSuccessCopyWithImpl(
      UpdateTaskSuccess _value, $Res Function(UpdateTaskSuccess) _then)
      : super(_value, (v) => _then(v as UpdateTaskSuccess));

  @override
  UpdateTaskSuccess get _value => super._value as UpdateTaskSuccess;
}

/// @nodoc

class _$UpdateTaskSuccess implements UpdateTaskSuccess {
  const _$UpdateTaskSuccess();

  @override
  String toString() {
    return 'UpdateTaskState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateTaskSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskInitial value) initial,
    required TResult Function(UpdateTaskLoading value) loading,
    required TResult Function(UpdateTaskSuccess value) success,
    required TResult Function(UpdateTaskErrorDetails value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskSuccess implements UpdateTaskState {
  const factory UpdateTaskSuccess() = _$UpdateTaskSuccess;
}

/// @nodoc
abstract class $UpdateTaskErrorDetailsCopyWith<$Res> {
  factory $UpdateTaskErrorDetailsCopyWith(UpdateTaskErrorDetails value,
          $Res Function(UpdateTaskErrorDetails) then) =
      _$UpdateTaskErrorDetailsCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$UpdateTaskErrorDetailsCopyWithImpl<$Res>
    extends _$UpdateTaskStateCopyWithImpl<$Res>
    implements $UpdateTaskErrorDetailsCopyWith<$Res> {
  _$UpdateTaskErrorDetailsCopyWithImpl(UpdateTaskErrorDetails _value,
      $Res Function(UpdateTaskErrorDetails) _then)
      : super(_value, (v) => _then(v as UpdateTaskErrorDetails));

  @override
  UpdateTaskErrorDetails get _value => super._value as UpdateTaskErrorDetails;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UpdateTaskErrorDetails(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTaskErrorDetails implements UpdateTaskErrorDetails {
  const _$UpdateTaskErrorDetails(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'UpdateTaskState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTaskErrorDetails &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $UpdateTaskErrorDetailsCopyWith<UpdateTaskErrorDetails> get copyWith =>
      _$UpdateTaskErrorDetailsCopyWithImpl<UpdateTaskErrorDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(UpdateTaskInitial value) initial,
    required TResult Function(UpdateTaskLoading value) loading,
    required TResult Function(UpdateTaskSuccess value) success,
    required TResult Function(UpdateTaskErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitial value)? initial,
    TResult Function(UpdateTaskLoading value)? loading,
    TResult Function(UpdateTaskSuccess value)? success,
    TResult Function(UpdateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskErrorDetails implements UpdateTaskState {
  const factory UpdateTaskErrorDetails(String error) = _$UpdateTaskErrorDetails;

  String get error;
  @JsonKey(ignore: true)
  $UpdateTaskErrorDetailsCopyWith<UpdateTaskErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
