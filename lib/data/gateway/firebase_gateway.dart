import 'package:deepstatebllog/domain/entity/user.dart' as user_entity;
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseGateway {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<user_entity.User> signUpWithEmail(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user = _auth.currentUser;
      return user_entity.User(
        email: email,
        username: user?.displayName ?? '',
        id: user?.uid ?? '',
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<user_entity.User> signInWithEmail(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      final user = _auth.currentUser;
      if (user != null) {
        return user_entity.User(
          email: email,
          username: user.displayName,
          id: user.uid,
        );
      } else {
        throw Exception('Failed to sign in');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> signOut() async {
    return _auth.signOut();
  }

  Stream<user_entity.User?> getCurrentUserStream() async* {
    yield* FirebaseAuth.instance.authStateChanges().map((User? firebaseUser) {
      return firebaseUser != null
          ? user_entity.User(
              id: firebaseUser.uid,
              email: firebaseUser.email!,
              username: firebaseUser.displayName)
          : null;
    });
  }
}
