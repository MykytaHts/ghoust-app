import 'package:deepstatebllog/domain/entity/user.dart';
import 'package:deepstatebllog/domain/service/auth_service.dart';

abstract class SignUpWithEmailUseCase {
  SignUpWithEmailUseCase();

  Future<User> call(String email, String password);
}

class RemoteSignUpWithEmailUseCase implements SignUpWithEmailUseCase {
  RemoteSignUpWithEmailUseCase(this._service);
  final AuthService _service;

  @override
  Future<User> call(String email, String password) async {
    return _service.signUpWithEmail(email, password);
  }
}
