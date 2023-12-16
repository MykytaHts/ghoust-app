import 'package:deepstatebllog/domain/entity/user.dart';
import 'package:deepstatebllog/domain/service/auth_service.dart';

abstract class SignInWithEmailUseCase {
  SignInWithEmailUseCase();

  Future<User> call(String email, String password);
}

class RemoteSignInWithEmailUseCase implements SignInWithEmailUseCase {
  RemoteSignInWithEmailUseCase(this._service);
  final AuthService _service;

  @override
  Future<User> call(String email, String password) async {
    return _service.signInWithEmail(email, password);
  }
}
