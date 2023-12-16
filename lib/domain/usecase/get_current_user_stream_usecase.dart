import 'package:deepstatebllog/domain/entity/user.dart';
import 'package:deepstatebllog/domain/service/auth_service.dart';

abstract class GetCurrentUserStreamUseCase {
  GetCurrentUserStreamUseCase();

  Stream<User?> call();
}

class RemoteGetCurrentUserStreamUseCase implements GetCurrentUserStreamUseCase {
  RemoteGetCurrentUserStreamUseCase(this._service);
  final AuthService _service;

  @override
  Stream<User?> call() {
    return _service.getCurrentUserStream();
  }
}
