import 'package:bloc/bloc.dart';
import 'package:deepstatebllog/domain/entity/user.dart';
import 'package:deepstatebllog/domain/usecase/get_current_user_stream_usecase.dart';
import 'package:deepstatebllog/domain/usecase/sign_in_with_email_usecase.dart';
import 'package:deepstatebllog/domain/usecase/sign_up_with_email_usecase.dart';
import 'package:deepstatebllog/domain/usecase/sign_out_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._signInWithEmailUseCase,
    this._signOutUseCase,
    this._getCurrentUserStreamUseCase,
    this._signUpWithEmailUseCase,
  ) : super(const _Unauthenticated()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        signInWithEmail: (email, password) {
          return _signInWithEmail(email, password);
        },
        signUpWithEmail: (email, password) {
          return _signUpWithEmail(email, password);
        },
        signOut: () {
          return _signOut();
        },
        getCurrentUser: () {
          return _getCurrentUser(emit);
        },
      );
    });
  }

  Future<void> _getCurrentUser(Emitter<AuthState> emit) async {
    await emit.forEach(
      _getCurrentUserStreamUseCase.call(),
      onData: (data) {
        return data != null ? _Authenticated(data) : const _Unauthenticated();
      },
    );
  }

  Future<void> _signInWithEmail(String email, String password) {
    return _signInWithEmailUseCase.call(email, password);
  }

  Future<void> _signUpWithEmail(String email, String password) {
    return _signUpWithEmailUseCase.call(email, password);
  }

  Future<void> _signOut() {
    return _signOutUseCase.call();
  }

  final SignOutUseCase _signOutUseCase;
  final SignInWithEmailUseCase _signInWithEmailUseCase;
  final SignUpWithEmailUseCase _signUpWithEmailUseCase;
  final GetCurrentUserStreamUseCase _getCurrentUserStreamUseCase;
}
