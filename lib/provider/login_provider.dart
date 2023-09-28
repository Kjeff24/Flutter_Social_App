import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/response/login_response.dart';
import 'package:flutter_application_1/data/service/login_service.dart';

class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';
  Future<LoginResponse> login() async {
    return LoginService(username, password).call();
  }
}
