// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _SearchStarted searchStarted({required String query}) {
    return _SearchStarted(
      query: query,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  String get query => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchStartedCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$SearchStartedCopyWith(
          _SearchStarted value, $Res Function(_SearchStarted) then) =
      __$SearchStartedCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$SearchStartedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchStartedCopyWith<$Res> {
  __$SearchStartedCopyWithImpl(
      _SearchStarted _value, $Res Function(_SearchStarted) _then)
      : super(_value, (v) => _then(v as _SearchStarted));

  @override
  _SearchStarted get _value => super._value as _SearchStarted;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_SearchStarted(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchStarted implements _SearchStarted {
  const _$_SearchStarted({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchStarted(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStarted &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$SearchStartedCopyWith<_SearchStarted> get copyWith =>
      __$SearchStartedCopyWithImpl<_SearchStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchStarted,
  }) {
    return searchStarted(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchStarted,
    required TResult orElse(),
  }) {
    if (searchStarted != null) {
      return searchStarted(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
  }) {
    return searchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    required TResult orElse(),
  }) {
    if (searchStarted != null) {
      return searchStarted(this);
    }
    return orElse();
  }
}

abstract class _SearchStarted implements SearchEvent {
  const factory _SearchStarted({required String query}) = _$_SearchStarted;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchStartedCopyWith<_SearchStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Searching searching() {
    return const _Searching();
  }

  _NoResultFound noResultFound() {
    return const _NoResultFound();
  }

  _SearchCompleted searchCompleted({required List<AppUser> userList}) {
    return _SearchCompleted(
      userList: userList,
    );
  }

  _SearchError searchError({required Failure failure}) {
    return _SearchError(
      failure: failure,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noResultFound,
    required TResult Function(List<AppUser> userList) searchCompleted,
    required TResult Function(Failure failure) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noResultFound,
    TResult Function(List<AppUser> userList)? searchCompleted,
    TResult Function(Failure failure)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searching value) searching,
    required TResult Function(_NoResultFound value) noResultFound,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_SearchError value) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_NoResultFound value)? noResultFound,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
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
    return 'SearchState.initial()';
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
    required TResult Function() searching,
    required TResult Function() noResultFound,
    required TResult Function(List<AppUser> userList) searchCompleted,
    required TResult Function(Failure failure) searchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noResultFound,
    TResult Function(List<AppUser> userList)? searchCompleted,
    TResult Function(Failure failure)? searchError,
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
    required TResult Function(_Searching value) searching,
    required TResult Function(_NoResultFound value) noResultFound,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_SearchError value) searchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_NoResultFound value)? noResultFound,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SearchingCopyWith<$Res> {
  factory _$SearchingCopyWith(
          _Searching value, $Res Function(_Searching) then) =
      __$SearchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchingCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchingCopyWith<$Res> {
  __$SearchingCopyWithImpl(_Searching _value, $Res Function(_Searching) _then)
      : super(_value, (v) => _then(v as _Searching));

  @override
  _Searching get _value => super._value as _Searching;
}

/// @nodoc

class _$_Searching implements _Searching {
  const _$_Searching();

  @override
  String toString() {
    return 'SearchState.searching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Searching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noResultFound,
    required TResult Function(List<AppUser> userList) searchCompleted,
    required TResult Function(Failure failure) searchError,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noResultFound,
    TResult Function(List<AppUser> userList)? searchCompleted,
    TResult Function(Failure failure)? searchError,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searching value) searching,
    required TResult Function(_NoResultFound value) noResultFound,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_NoResultFound value)? noResultFound,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _Searching implements SearchState {
  const factory _Searching() = _$_Searching;
}

/// @nodoc
abstract class _$NoResultFoundCopyWith<$Res> {
  factory _$NoResultFoundCopyWith(
          _NoResultFound value, $Res Function(_NoResultFound) then) =
      __$NoResultFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoResultFoundCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$NoResultFoundCopyWith<$Res> {
  __$NoResultFoundCopyWithImpl(
      _NoResultFound _value, $Res Function(_NoResultFound) _then)
      : super(_value, (v) => _then(v as _NoResultFound));

  @override
  _NoResultFound get _value => super._value as _NoResultFound;
}

/// @nodoc

class _$_NoResultFound implements _NoResultFound {
  const _$_NoResultFound();

  @override
  String toString() {
    return 'SearchState.noResultFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoResultFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noResultFound,
    required TResult Function(List<AppUser> userList) searchCompleted,
    required TResult Function(Failure failure) searchError,
  }) {
    return noResultFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noResultFound,
    TResult Function(List<AppUser> userList)? searchCompleted,
    TResult Function(Failure failure)? searchError,
    required TResult orElse(),
  }) {
    if (noResultFound != null) {
      return noResultFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searching value) searching,
    required TResult Function(_NoResultFound value) noResultFound,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_SearchError value) searchError,
  }) {
    return noResultFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_NoResultFound value)? noResultFound,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (noResultFound != null) {
      return noResultFound(this);
    }
    return orElse();
  }
}

abstract class _NoResultFound implements SearchState {
  const factory _NoResultFound() = _$_NoResultFound;
}

/// @nodoc
abstract class _$SearchCompletedCopyWith<$Res> {
  factory _$SearchCompletedCopyWith(
          _SearchCompleted value, $Res Function(_SearchCompleted) then) =
      __$SearchCompletedCopyWithImpl<$Res>;
  $Res call({List<AppUser> userList});
}

/// @nodoc
class __$SearchCompletedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchCompletedCopyWith<$Res> {
  __$SearchCompletedCopyWithImpl(
      _SearchCompleted _value, $Res Function(_SearchCompleted) _then)
      : super(_value, (v) => _then(v as _SearchCompleted));

  @override
  _SearchCompleted get _value => super._value as _SearchCompleted;

  @override
  $Res call({
    Object? userList = freezed,
  }) {
    return _then(_SearchCompleted(
      userList: userList == freezed
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
    ));
  }
}

/// @nodoc

class _$_SearchCompleted implements _SearchCompleted {
  const _$_SearchCompleted({required this.userList});

  @override
  final List<AppUser> userList;

  @override
  String toString() {
    return 'SearchState.searchCompleted(userList: $userList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchCompleted &&
            (identical(other.userList, userList) ||
                const DeepCollectionEquality()
                    .equals(other.userList, userList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userList);

  @JsonKey(ignore: true)
  @override
  _$SearchCompletedCopyWith<_SearchCompleted> get copyWith =>
      __$SearchCompletedCopyWithImpl<_SearchCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noResultFound,
    required TResult Function(List<AppUser> userList) searchCompleted,
    required TResult Function(Failure failure) searchError,
  }) {
    return searchCompleted(userList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noResultFound,
    TResult Function(List<AppUser> userList)? searchCompleted,
    TResult Function(Failure failure)? searchError,
    required TResult orElse(),
  }) {
    if (searchCompleted != null) {
      return searchCompleted(userList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searching value) searching,
    required TResult Function(_NoResultFound value) noResultFound,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_NoResultFound value)? noResultFound,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchCompleted != null) {
      return searchCompleted(this);
    }
    return orElse();
  }
}

abstract class _SearchCompleted implements SearchState {
  const factory _SearchCompleted({required List<AppUser> userList}) =
      _$_SearchCompleted;

  List<AppUser> get userList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchCompletedCopyWith<_SearchCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchErrorCopyWith<$Res> {
  factory _$SearchErrorCopyWith(
          _SearchError value, $Res Function(_SearchError) then) =
      __$SearchErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$SearchErrorCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchErrorCopyWith<$Res> {
  __$SearchErrorCopyWithImpl(
      _SearchError _value, $Res Function(_SearchError) _then)
      : super(_value, (v) => _then(v as _SearchError));

  @override
  _SearchError get _value => super._value as _SearchError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_SearchError(
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

class _$_SearchError implements _SearchError {
  const _$_SearchError({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SearchState.searchError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$SearchErrorCopyWith<_SearchError> get copyWith =>
      __$SearchErrorCopyWithImpl<_SearchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noResultFound,
    required TResult Function(List<AppUser> userList) searchCompleted,
    required TResult Function(Failure failure) searchError,
  }) {
    return searchError(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noResultFound,
    TResult Function(List<AppUser> userList)? searchCompleted,
    TResult Function(Failure failure)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searching value) searching,
    required TResult Function(_NoResultFound value) noResultFound,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_NoResultFound value)? noResultFound,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class _SearchError implements SearchState {
  const factory _SearchError({required Failure failure}) = _$_SearchError;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchErrorCopyWith<_SearchError> get copyWith =>
      throw _privateConstructorUsedError;
}
