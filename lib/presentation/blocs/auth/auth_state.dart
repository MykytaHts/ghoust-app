part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated(User user) = _Authenticated;
  const factory AuthState.unauthenticated([Object? error]) = _Unauthenticated;
}
