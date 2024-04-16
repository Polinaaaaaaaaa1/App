import 'package:flutter/material.dart';

class UserManager {
  static final UserManager _instance = UserManager._internal();

  factory UserManager() {
    return _instance;
  }

  UserManager._internal();

  String? userEmail;

  void setUserEmail(String email) {
    userEmail = email;
  }
}
