import 'dart:convert';

import 'package:flutter_application_1/config/app_confid.dart';
import 'package:flutter_application_1/data/response/login_response.dart';
import 'package:http/http.dart' as http;

class LoginService {
  final String username;
  final String password;
  LoginService(this.username, this.password);
  Future<LoginResponse> call() async {
    final headers = {
      'Content-Type': 'application/json', // Set the content type to JSON
    };

    final result = await http.post(
      Uri.parse('${AppConfig.baseUrl}/users/login'),
      headers: headers, 
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );

    return LoginResponse.fromJson(jsonDecode(result.body)['data']);
  }
}
