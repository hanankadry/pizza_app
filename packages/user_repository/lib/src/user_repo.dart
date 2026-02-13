import 'package:user_repository/src/models/models.dart';

abstract class UserRepository {
  // auth
  Stream<MyUser?> get user;

  // create user
  Future<MyUser> signup(MyUser myUser, String password);

  // update user
  Future<void> setUserData(MyUser myUser);

  // log in user
  Future<void> signIn(String email, String password);

  // log out user
  Future<void> logOut();
}