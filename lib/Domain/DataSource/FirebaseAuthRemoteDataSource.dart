import 'package:firebase_auth/firebase_auth.dart';
import 'package:heimdall/Data/Models/Users/UserDTO.dart';

abstract class FirebaseAuthRemoteDataSource {

  Future<User> createUser ({ required UserDTO user});
  Future<User> updateUserImage ({ required String image });
  Future<void> resetPassword({ required String email});
  Future<User> signInWithEmailAndPassword({required String email ,required String password});
  Future<User> signInWithGoogle();
}