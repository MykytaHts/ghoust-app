import 'package:deepstatebllog/data/gateway/firebase_gateway.dart';

import 'package:deepstatebllog/domain/entity/user.dart' as user_entity;
import 'package:deepstatebllog/domain/service/auth_service.dart';

class FirebaseAuthService implements AuthService {
  final FirebaseGateway _gateway;

  FirebaseAuthService(this._gateway);
  @override
  Future<user_entity.User> signUpWithEmail(
      String email, String password) async {
    return _gateway.signUpWithEmail(email, password);
  }

  @override
  Future<void> signOut() async {
    return _gateway.signOut();
  }

  @override
  Stream<user_entity.User?> getCurrentUserStream() {
    return _gateway.getCurrentUserStream();
  }

  @override
  Future<user_entity.User> signInWithEmail(String email, String password) {
    return _gateway.signInWithEmail(email, password);
  }
}
