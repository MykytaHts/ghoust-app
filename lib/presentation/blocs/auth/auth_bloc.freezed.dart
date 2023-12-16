// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signOut,
    required TResult Function() getCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signOut,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithEmailEvent value) signUpWithEmail,
    required TResult Function(SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserEvent value) getCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult? Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserEvent value)? getCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserEvent value)? getCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpWithEmailEventCopyWith<$Res> {
  factory _$$SignUpWithEmailEventCopyWith(_$SignUpWithEmailEvent value,
          $Res Function(_$SignUpWithEmailEvent) then) =
      __$$SignUpWithEmailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignUpWithEmailEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpWithEmailEvent>
    implements _$$SignUpWithEmailEventCopyWith<$Res> {
  __$$SignUpWithEmailEventCopyWithImpl(_$SignUpWithEmailEvent _value,
      $Res Function(_$SignUpWithEmailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpWithEmailEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpWithEmailEvent implements SignUpWithEmailEvent {
  const _$SignUpWithEmailEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpWithEmailEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpWithEmailEventCopyWith<_$SignUpWithEmailEvent> get copyWith =>
      __$$SignUpWithEmailEventCopyWithImpl<_$SignUpWithEmailEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signOut,
    required TResult Function() getCurrentUser,
  }) {
    return signUpWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUser,
  }) {
    return signUpWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signOut,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signUpWithEmail != null) {
      return signUpWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithEmailEvent value) signUpWithEmail,
    required TResult Function(SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserEvent value) getCurrentUser,
  }) {
    return signUpWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult? Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserEvent value)? getCurrentUser,
  }) {
    return signUpWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserEvent value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signUpWithEmail != null) {
      return signUpWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignUpWithEmailEvent implements AuthEvent {
  const factory SignUpWithEmailEvent(
      final String email, final String password) = _$SignUpWithEmailEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpWithEmailEventCopyWith<_$SignUpWithEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithEmailEventCopyWith<$Res> {
  factory _$$SignInWithEmailEventCopyWith(_$SignInWithEmailEvent value,
          $Res Function(_$SignInWithEmailEvent) then) =
      __$$SignInWithEmailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInWithEmailEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithEmailEvent>
    implements _$$SignInWithEmailEventCopyWith<$Res> {
  __$$SignInWithEmailEventCopyWithImpl(_$SignInWithEmailEvent _value,
      $Res Function(_$SignInWithEmailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInWithEmailEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithEmailEvent implements SignInWithEmailEvent {
  const _$SignInWithEmailEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithEmailEventCopyWith<_$SignInWithEmailEvent> get copyWith =>
      __$$SignInWithEmailEventCopyWithImpl<_$SignInWithEmailEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signOut,
    required TResult Function() getCurrentUser,
  }) {
    return signInWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUser,
  }) {
    return signInWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signOut,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithEmailEvent value) signUpWithEmail,
    required TResult Function(SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserEvent value) getCurrentUser,
  }) {
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult? Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserEvent value)? getCurrentUser,
  }) {
    return signInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserEvent value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailEvent implements AuthEvent {
  const factory SignInWithEmailEvent(
      final String email, final String password) = _$SignInWithEmailEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInWithEmailEventCopyWith<_$SignInWithEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutEventCopyWith<$Res> {
  factory _$$SignOutEventCopyWith(
          _$SignOutEvent value, $Res Function(_$SignOutEvent) then) =
      __$$SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutEvent>
    implements _$$SignOutEventCopyWith<$Res> {
  __$$SignOutEventCopyWithImpl(
      _$SignOutEvent _value, $Res Function(_$SignOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutEvent implements SignOutEvent {
  const _$SignOutEvent();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signOut,
    required TResult Function() getCurrentUser,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUser,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signOut,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithEmailEvent value) signUpWithEmail,
    required TResult Function(SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserEvent value) getCurrentUser,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult? Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserEvent value)? getCurrentUser,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserEvent value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutEvent implements AuthEvent {
  const factory SignOutEvent() = _$SignOutEvent;
}

/// @nodoc
abstract class _$$GetCurrentUserEventCopyWith<$Res> {
  factory _$$GetCurrentUserEventCopyWith(_$GetCurrentUserEvent value,
          $Res Function(_$GetCurrentUserEvent) then) =
      __$$GetCurrentUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCurrentUserEvent>
    implements _$$GetCurrentUserEventCopyWith<$Res> {
  __$$GetCurrentUserEventCopyWithImpl(
      _$GetCurrentUserEvent _value, $Res Function(_$GetCurrentUserEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentUserEvent implements GetCurrentUserEvent {
  const _$GetCurrentUserEvent();

  @override
  String toString() {
    return 'AuthEvent.getCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signOut,
    required TResult Function() getCurrentUser,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUser,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signOut,
    TResult Function()? getCurrentUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithEmailEvent value) signUpWithEmail,
    required TResult Function(SignInWithEmailEvent value) signInWithEmail,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserEvent value) getCurrentUser,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult? Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserEvent value)? getCurrentUser,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithEmailEvent value)? signUpWithEmail,
    TResult Function(SignInWithEmailEvent value)? signInWithEmail,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserEvent value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserEvent implements AuthEvent {
  const factory GetCurrentUserEvent() = _$GetCurrentUserEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function(Object? error) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function(Object? error)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function(Object? error)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Authenticated(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function(Object? error) unauthenticated,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function(Object? error)? unauthenticated,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function(Object? error)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(final User user) = _$_Authenticated;

  User get user;
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnauthenticatedCopyWith<$Res> {
  factory _$$_UnauthenticatedCopyWith(
          _$_Unauthenticated value, $Res Function(_$_Unauthenticated) then) =
      __$$_UnauthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$_UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Unauthenticated>
    implements _$$_UnauthenticatedCopyWith<$Res> {
  __$$_UnauthenticatedCopyWithImpl(
      _$_Unauthenticated _value, $Res Function(_$_Unauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Unauthenticated(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated([this.error]);

  @override
  final Object? error;

  @override
  String toString() {
    return 'AuthState.unauthenticated(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unauthenticated &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnauthenticatedCopyWith<_$_Unauthenticated> get copyWith =>
      __$$_UnauthenticatedCopyWithImpl<_$_Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function(Object? error) unauthenticated,
  }) {
    return unauthenticated(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function(Object? error)? unauthenticated,
  }) {
    return unauthenticated?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function(Object? error)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated([final Object? error]) = _$_Unauthenticated;

  Object? get error;
  @JsonKey(ignore: true)
  _$$_UnauthenticatedCopyWith<_$_Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
