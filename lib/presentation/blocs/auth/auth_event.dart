part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUpWithEmail(String email, String password) =
      SignUpWithEmailEvent;
  const factory AuthEvent.signInWithEmail(String email, String password) =
      SignInWithEmailEvent;
  const factory AuthEvent.signOut() = SignOutEvent;
  const factory AuthEvent.getCurrentUser() = GetCurrentUserEvent;
}
