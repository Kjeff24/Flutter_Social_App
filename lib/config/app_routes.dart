import 'package:flutter_application_1/pages/edit_profile_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_application_1/pages/nearby_page.dart';
import 'package:flutter_application_1/pages/signup_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    signup: (context) => SignupPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile: (context) => EditProfilePage(),
    nearby: (context) => NearbyPage(),
  };
  static const login = '/';
  static const signup = '/signup';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
}
