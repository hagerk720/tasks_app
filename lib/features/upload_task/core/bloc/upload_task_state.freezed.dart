// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadTaskStateTearOff {
  const _$UploadTaskStateTearOff();

  UploadTaskInitial initial() {
    return const UploadTaskInitial();
  }

  UploadTaskLoading loading() {
    return const UploadTaskLoading();
  }

  UploadTaskSuccess success() {
    return const UploadTaskSuccess();
  }

  UploadTaskErrorDetails error(String error) {
    return UploadTaskErrorDetails(
      error,
    );
  }
}

/// @nodoc
const $UploadTaskState = _$UploadTaskStateTearOff();

/// @nodoc
mixin _$UploadTaskState {
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
    required TResult Function(UploadTaskInitial value) initial,
    required TResult Function(UploadTaskLoading value) loading,
    required TResult Function(UploadTaskSuccess value) success,
    required TResult Function(UploadTaskErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadTaskStateCopyWith<$Res> {
  factory $UploadTaskStateCopyWith(
          UploadTaskState value, $Res Function(UploadTaskState) then) =
      _$UploadTaskStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadTaskStateCopyWithImpl<$Res>
    implements $UploadTaskStateCopyWith<$Res> {
  _$UploadTaskStateCopyWithImpl(this._value, this._then);

  final UploadTaskState _value;
  // ignore: unused_field
  final $Res Function(UploadTaskState) _then;
}

/// @nodoc
abstract class $UploadTaskInitialCopyWith<$Res> {
  factory $UploadTaskInitialCopyWith(
          UploadTaskInitial value, $Res Function(UploadTaskInitial) then) =
      _$UploadTaskInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadTaskInitialCopyWithImpl<$Res>
    extends _$UploadTaskStateCopyWithImpl<$Res>
    implements $UploadTaskInitialCopyWith<$Res> {
  _$UploadTaskInitialCopyWithImpl(
      UploadTaskInitial _value, $Res Function(UploadTaskInitial) _then)
      : super(_value, (v) => _then(v as UploadTaskInitial));

  @override
  UploadTaskInitial get _value => super._value as UploadTaskInitial;
}

/// @nodoc

class _$UploadTaskInitial implements UploadTaskInitial {
  const _$UploadTaskInitial();

  @override
  String toString() {
    return 'UploadTaskState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadTaskInitial);
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
    required TResult Function(UploadTaskInitial value) initial,
    required TResult Function(UploadTaskLoading value) loading,
    required TResult Function(UploadTaskSuccess value) success,
    required TResult Function(UploadTaskErrorDetails value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UploadTaskInitial implements UploadTaskState {
  const factory UploadTaskInitial() = _$UploadTaskInitial;
}

/// @nodoc
abstract class $UploadTaskLoadingCopyWith<$Res> {
  factory $UploadTaskLoadingCopyWith(
          UploadTaskLoading value, $Res Function(UploadTaskLoading) then) =
      _$UploadTaskLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadTaskLoadingCopyWithImpl<$Res>
    extends _$UploadTaskStateCopyWithImpl<$Res>
    implements $UploadTaskLoadingCopyWith<$Res> {
  _$UploadTaskLoadingCopyWithImpl(
      UploadTaskLoading _value, $Res Function(UploadTaskLoading) _then)
      : super(_value, (v) => _then(v as UploadTaskLoading));

  @override
  UploadTaskLoading get _value => super._value as UploadTaskLoading;
}

/// @nodoc

class _$UploadTaskLoading implements UploadTaskLoading {
  const _$UploadTaskLoading();

  @override
  String toString() {
    return 'UploadTaskState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadTaskLoading);
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
    required TResult Function(UploadTaskInitial value) initial,
    required TResult Function(UploadTaskLoading value) loading,
    required TResult Function(UploadTaskSuccess value) success,
    required TResult Function(UploadTaskErrorDetails value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UploadTaskLoading implements UploadTaskState {
  const factory UploadTaskLoading() = _$UploadTaskLoading;
}

/// @nodoc
abstract class $UploadTaskSuccessCopyWith<$Res> {
  factory $UploadTaskSuccessCopyWith(
          UploadTaskSuccess value, $Res Function(UploadTaskSuccess) then) =
      _$UploadTaskSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadTaskSuccessCopyWithImpl<$Res>
    extends _$UploadTaskStateCopyWithImpl<$Res>
    implements $UploadTaskSuccessCopyWith<$Res> {
  _$UploadTaskSuccessCopyWithImpl(
      UploadTaskSuccess _value, $Res Function(UploadTaskSuccess) _then)
      : super(_value, (v) => _then(v as UploadTaskSuccess));

  @override
  UploadTaskSuccess get _value => super._value as UploadTaskSuccess;
}

/// @nodoc

class _$UploadTaskSuccess implements UploadTaskSuccess {
  const _$UploadTaskSuccess();

  @override
  String toString() {
    return 'UploadTaskState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadTaskSuccess);
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
    required TResult Function(UploadTaskInitial value) initial,
    required TResult Function(UploadTaskLoading value) loading,
    required TResult Function(UploadTaskSuccess value) success,
    required TResult Function(UploadTaskErrorDetails value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UploadTaskSuccess implements UploadTaskState {
  const factory UploadTaskSuccess() = _$UploadTaskSuccess;
}

/// @nodoc
abstract class $UploadTaskErrorDetailsCopyWith<$Res> {
  factory $UploadTaskErrorDetailsCopyWith(UploadTaskErrorDetails value,
          $Res Function(UploadTaskErrorDetails) then) =
      _$UploadTaskErrorDetailsCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$UploadTaskErrorDetailsCopyWithImpl<$Res>
    extends _$UploadTaskStateCopyWithImpl<$Res>
    implements $UploadTaskErrorDetailsCopyWith<$Res> {
  _$UploadTaskErrorDetailsCopyWithImpl(UploadTaskErrorDetails _value,
      $Res Function(UploadTaskErrorDetails) _then)
      : super(_value, (v) => _then(v as UploadTaskErrorDetails));

  @override
  UploadTaskErrorDetails get _value => super._value as UploadTaskErrorDetails;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UploadTaskErrorDetails(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadTaskErrorDetails implements UploadTaskErrorDetails {
  const _$UploadTaskErrorDetails(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'UploadTaskState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadTaskErrorDetails &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $UploadTaskErrorDetailsCopyWith<UploadTaskErrorDetails> get copyWith =>
      _$UploadTaskErrorDetailsCopyWithImpl<UploadTaskErrorDetails>(
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
    required TResult Function(UploadTaskInitial value) initial,
    required TResult Function(UploadTaskLoading value) loading,
    required TResult Function(UploadTaskSuccess value) success,
    required TResult Function(UploadTaskErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadTaskInitial value)? initial,
    TResult Function(UploadTaskLoading value)? loading,
    TResult Function(UploadTaskSuccess value)? success,
    TResult Function(UploadTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UploadTaskErrorDetails implements UploadTaskState {
  const factory UploadTaskErrorDetails(String error) = _$UploadTaskErrorDetails;

  String get error;
  @JsonKey(ignore: true)
  $UploadTaskErrorDetailsCopyWith<UploadTaskErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
