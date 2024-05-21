import 'dart:ffi';

class LoginModel {
  String email;
  String password;
  Bool remember;

  LoginModel(
      {required this.email, required this.password, required this.remember});
}
