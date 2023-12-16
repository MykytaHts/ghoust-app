import 'package:deepstatebllog/domain/entity/user.dart';

abstract class AuthService {
  Future<User> signUpWithEmail(String email, String password);
  Future<User> signInWithEmail(String email, String password);
  Future<void> signOut();
  Stream<User?> getCurrentUserStream();
}
