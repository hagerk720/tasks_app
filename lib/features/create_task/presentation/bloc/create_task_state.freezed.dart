// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateTaskStateTearOff {
  const _$CreateTaskStateTearOff();

  CreateTaskInitial initial() {
    return const CreateTaskInitial();
  }

  CreateTaskLoading loading() {
    return const CreateTaskLoading();
  }

  CreateTaskSuccess success(TaskEntity taskEntity) {
    return CreateTaskSuccess(
      taskEntity,
    );
  }

  CreateTaskErrorDetails error(String error) {
    return CreateTaskErrorDetails(
      error,
    );
  }
}

/// @nodoc
const $CreateTaskState = _$CreateTaskStateTearOff();

/// @nodoc
mixin _$CreateTaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskEntity taskEntity) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskInitial value) initial,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) success,
    required TResult Function(CreateTaskErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskStateCopyWith<$Res> {
  factory $CreateTaskStateCopyWith(
          CreateTaskState value, $Res Function(CreateTaskState) then) =
      _$CreateTaskStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTaskStateCopyWithImpl<$Res>
    implements $CreateTaskStateCopyWith<$Res> {
  _$CreateTaskStateCopyWithImpl(this._value, this._then);

  final CreateTaskState _value;
  // ignore: unused_field
  final $Res Function(CreateTaskState) _then;
}

/// @nodoc
abstract class $CreateTaskInitialCopyWith<$Res> {
  factory $CreateTaskInitialCopyWith(
          CreateTaskInitial value, $Res Function(CreateTaskInitial) then) =
      _$CreateTaskInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTaskInitialCopyWithImpl<$Res>
    extends _$CreateTaskStateCopyWithImpl<$Res>
    implements $CreateTaskInitialCopyWith<$Res> {
  _$CreateTaskInitialCopyWithImpl(
      CreateTaskInitial _value, $Res Function(CreateTaskInitial) _then)
      : super(_value, (v) => _then(v as CreateTaskInitial));

  @override
  CreateTaskInitial get _value => super._value as CreateTaskInitial;
}

/// @nodoc

class _$CreateTaskInitial implements CreateTaskInitial {
  const _$CreateTaskInitial();

  @override
  String toString() {
    return 'CreateTaskState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateTaskInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskEntity taskEntity) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
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
    required TResult Function(CreateTaskInitial value) initial,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) success,
    required TResult Function(CreateTaskErrorDetails value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateTaskInitial implements CreateTaskState {
  const factory CreateTaskInitial() = _$CreateTaskInitial;
}

/// @nodoc
abstract class $CreateTaskLoadingCopyWith<$Res> {
  factory $CreateTaskLoadingCopyWith(
          CreateTaskLoading value, $Res Function(CreateTaskLoading) then) =
      _$CreateTaskLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTaskLoadingCopyWithImpl<$Res>
    extends _$CreateTaskStateCopyWithImpl<$Res>
    implements $CreateTaskLoadingCopyWith<$Res> {
  _$CreateTaskLoadingCopyWithImpl(
      CreateTaskLoading _value, $Res Function(CreateTaskLoading) _then)
      : super(_value, (v) => _then(v as CreateTaskLoading));

  @override
  CreateTaskLoading get _value => super._value as CreateTaskLoading;
}

/// @nodoc

class _$CreateTaskLoading implements CreateTaskLoading {
  const _$CreateTaskLoading();

  @override
  String toString() {
    return 'CreateTaskState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateTaskLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskEntity taskEntity) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
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
    required TResult Function(CreateTaskInitial value) initial,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) success,
    required TResult Function(CreateTaskErrorDetails value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateTaskLoading implements CreateTaskState {
  const factory CreateTaskLoading() = _$CreateTaskLoading;
}

/// @nodoc
abstract class $CreateTaskSuccessCopyWith<$Res> {
  factory $CreateTaskSuccessCopyWith(
          CreateTaskSuccess value, $Res Function(CreateTaskSuccess) then) =
      _$CreateTaskSuccessCopyWithImpl<$Res>;
  $Res call({TaskEntity taskEntity});
}

/// @nodoc
class _$CreateTaskSuccessCopyWithImpl<$Res>
    extends _$CreateTaskStateCopyWithImpl<$Res>
    implements $CreateTaskSuccessCopyWith<$Res> {
  _$CreateTaskSuccessCopyWithImpl(
      CreateTaskSuccess _value, $Res Function(CreateTaskSuccess) _then)
      : super(_value, (v) => _then(v as CreateTaskSuccess));

  @override
  CreateTaskSuccess get _value => super._value as CreateTaskSuccess;

  @override
  $Res call({
    Object? taskEntity = freezed,
  }) {
    return _then(CreateTaskSuccess(
      taskEntity == freezed
          ? _value.taskEntity
          : taskEntity // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$CreateTaskSuccess implements CreateTaskSuccess {
  const _$CreateTaskSuccess(this.taskEntity);

  @override
  final TaskEntity taskEntity;

  @override
  String toString() {
    return 'CreateTaskState.success(taskEntity: $taskEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateTaskSuccess &&
            const DeepCollectionEquality()
                .equals(other.taskEntity, taskEntity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(taskEntity));

  @JsonKey(ignore: true)
  @override
  $CreateTaskSuccessCopyWith<CreateTaskSuccess> get copyWith =>
      _$CreateTaskSuccessCopyWithImpl<CreateTaskSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskEntity taskEntity) success,
    required TResult Function(String error) error,
  }) {
    return success(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
    TResult Function(String error)? error,
  }) {
    return success?.call(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(taskEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskInitial value) initial,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) success,
    required TResult Function(CreateTaskErrorDetails value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CreateTaskSuccess implements CreateTaskState {
  const factory CreateTaskSuccess(TaskEntity taskEntity) = _$CreateTaskSuccess;

  TaskEntity get taskEntity;
  @JsonKey(ignore: true)
  $CreateTaskSuccessCopyWith<CreateTaskSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskErrorDetailsCopyWith<$Res> {
  factory $CreateTaskErrorDetailsCopyWith(CreateTaskErrorDetails value,
          $Res Function(CreateTaskErrorDetails) then) =
      _$CreateTaskErrorDetailsCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$CreateTaskErrorDetailsCopyWithImpl<$Res>
    extends _$CreateTaskStateCopyWithImpl<$Res>
    implements $CreateTaskErrorDetailsCopyWith<$Res> {
  _$CreateTaskErrorDetailsCopyWithImpl(CreateTaskErrorDetails _value,
      $Res Function(CreateTaskErrorDetails) _then)
      : super(_value, (v) => _then(v as CreateTaskErrorDetails));

  @override
  CreateTaskErrorDetails get _value => super._value as CreateTaskErrorDetails;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CreateTaskErrorDetails(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateTaskErrorDetails implements CreateTaskErrorDetails {
  const _$CreateTaskErrorDetails(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CreateTaskState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateTaskErrorDetails &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $CreateTaskErrorDetailsCopyWith<CreateTaskErrorDetails> get copyWith =>
      _$CreateTaskErrorDetailsCopyWithImpl<CreateTaskErrorDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskEntity taskEntity) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskEntity taskEntity)? success,
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
    required TResult Function(CreateTaskInitial value) initial,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) success,
    required TResult Function(CreateTaskErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitial value)? initial,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? success,
    TResult Function(CreateTaskErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateTaskErrorDetails implements CreateTaskState {
  const factory CreateTaskErrorDetails(String error) = _$CreateTaskErrorDetails;

  String get error;
  @JsonKey(ignore: true)
  $CreateTaskErrorDetailsCopyWith<CreateTaskErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
