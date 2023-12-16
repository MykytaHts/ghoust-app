import 'package:deepstatebllog/domain/service/auth_service.dart';

abstract class SignOutUseCase {
  SignOutUseCase();

  Future<void> call();
}

class RemoteSignOutUseCase implements SignOutUseCase {
  RemoteSignOutUseCase(this._service);
  final AuthService _service;

  @override
  Future<void> call() async {
    return _service.signOut();
  }
}
