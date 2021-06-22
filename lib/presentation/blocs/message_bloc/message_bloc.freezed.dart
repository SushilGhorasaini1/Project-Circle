// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageEventTearOff {
  const _$MessageEventTearOff();

  _WatchAllMessages watchAllMessages({required String id}) {
    return _WatchAllMessages(
      id: id,
    );
  }

  _MessageRecieved messageRecieved(
      {required Either<Failure, List<Message>> failureOrSuccess}) {
    return _MessageRecieved(
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $MessageEvent = _$MessageEventTearOff();

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllMessages,
    required TResult Function(Either<Failure, List<Message>> failureOrSuccess)
        messageRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllMessages,
    TResult Function(Either<Failure, List<Message>> failureOrSuccess)?
        messageRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllMessages value) watchAllMessages,
    required TResult Function(_MessageRecieved value) messageRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllMessages value)? watchAllMessages,
    TResult Function(_MessageRecieved value)? messageRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;
}

/// @nodoc
abstract class _$WatchAllMessagesCopyWith<$Res> {
  factory _$WatchAllMessagesCopyWith(
          _WatchAllMessages value, $Res Function(_WatchAllMessages) then) =
      __$WatchAllMessagesCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$WatchAllMessagesCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements _$WatchAllMessagesCopyWith<$Res> {
  __$WatchAllMessagesCopyWithImpl(
      _WatchAllMessages _value, $Res Function(_WatchAllMessages) _then)
      : super(_value, (v) => _then(v as _WatchAllMessages));

  @override
  _WatchAllMessages get _value => super._value as _WatchAllMessages;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_WatchAllMessages(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAllMessages implements _WatchAllMessages {
  const _$_WatchAllMessages({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'MessageEvent.watchAllMessages(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllMessages &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$WatchAllMessagesCopyWith<_WatchAllMessages> get copyWith =>
      __$WatchAllMessagesCopyWithImpl<_WatchAllMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllMessages,
    required TResult Function(Either<Failure, List<Message>> failureOrSuccess)
        messageRecieved,
  }) {
    return watchAllMessages(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllMessages,
    TResult Function(Either<Failure, List<Message>> failureOrSuccess)?
        messageRecieved,
    required TResult orElse(),
  }) {
    if (watchAllMessages != null) {
      return watchAllMessages(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllMessages value) watchAllMessages,
    required TResult Function(_MessageRecieved value) messageRecieved,
  }) {
    return watchAllMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllMessages value)? watchAllMessages,
    TResult Function(_MessageRecieved value)? messageRecieved,
    required TResult orElse(),
  }) {
    if (watchAllMessages != null) {
      return watchAllMessages(this);
    }
    return orElse();
  }
}

abstract class _WatchAllMessages implements MessageEvent {
  const factory _WatchAllMessages({required String id}) = _$_WatchAllMessages;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchAllMessagesCopyWith<_WatchAllMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MessageRecievedCopyWith<$Res> {
  factory _$MessageRecievedCopyWith(
          _MessageRecieved value, $Res Function(_MessageRecieved) then) =
      __$MessageRecievedCopyWithImpl<$Res>;
  $Res call({Either<Failure, List<Message>> failureOrSuccess});
}

/// @nodoc
class __$MessageRecievedCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements _$MessageRecievedCopyWith<$Res> {
  __$MessageRecievedCopyWithImpl(
      _MessageRecieved _value, $Res Function(_MessageRecieved) _then)
      : super(_value, (v) => _then(v as _MessageRecieved));

  @override
  _MessageRecieved get _value => super._value as _MessageRecieved;

  @override
  $Res call({
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_MessageRecieved(
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Message>>,
    ));
  }
}

/// @nodoc

class _$_MessageRecieved implements _MessageRecieved {
  const _$_MessageRecieved({required this.failureOrSuccess});

  @override
  final Either<Failure, List<Message>> failureOrSuccess;

  @override
  String toString() {
    return 'MessageEvent.messageRecieved(failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageRecieved &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$MessageRecievedCopyWith<_MessageRecieved> get copyWith =>
      __$MessageRecievedCopyWithImpl<_MessageRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllMessages,
    required TResult Function(Either<Failure, List<Message>> failureOrSuccess)
        messageRecieved,
  }) {
    return messageRecieved(failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllMessages,
    TResult Function(Either<Failure, List<Message>> failureOrSuccess)?
        messageRecieved,
    required TResult orElse(),
  }) {
    if (messageRecieved != null) {
      return messageRecieved(failureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllMessages value) watchAllMessages,
    required TResult Function(_MessageRecieved value) messageRecieved,
  }) {
    return messageRecieved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllMessages value)? watchAllMessages,
    TResult Function(_MessageRecieved value)? messageRecieved,
    required TResult orElse(),
  }) {
    if (messageRecieved != null) {
      return messageRecieved(this);
    }
    return orElse();
  }
}

abstract class _MessageRecieved implements MessageEvent {
  const factory _MessageRecieved(
          {required Either<Failure, List<Message>> failureOrSuccess}) =
      _$_MessageRecieved;

  Either<Failure, List<Message>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MessageRecievedCopyWith<_MessageRecieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MessageStateTearOff {
  const _$MessageStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded({required List<Message> messageList}) {
    return _Loaded(
      messageList: messageList,
    );
  }

  _Error error({required Failure failure}) {
    return _Error(
      failure: failure,
    );
  }
}

/// @nodoc
const $MessageState = _$MessageStateTearOff();

/// @nodoc
mixin _$MessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messageList) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messageList)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MessageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messageList) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messageList)? loaded,
    TResult Function(Failure failure)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MessageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MessageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messageList) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messageList)? loaded,
    TResult Function(Failure failure)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MessageState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Message> messageList});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? messageList = freezed,
  }) {
    return _then(_Loaded(
      messageList: messageList == freezed
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.messageList});

  @override
  final List<Message> messageList;

  @override
  String toString() {
    return 'MessageState.loaded(messageList: $messageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.messageList, messageList) ||
                const DeepCollectionEquality()
                    .equals(other.messageList, messageList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messageList);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messageList) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(messageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messageList)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MessageState {
  const factory _Loaded({required List<Message> messageList}) = _$_Loaded;

  List<Message> get messageList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Error(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MessageState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messageList) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messageList)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MessageState {
  const factory _Error({required Failure failure}) = _$_Error;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
