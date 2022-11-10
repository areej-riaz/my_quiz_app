import 'package:my_quiz_app/screens/home/home_screen.dart';

import 'package:my_quiz_app/screens/login/login_screen.dart';

import 'package:my_quiz_app/screens/splash/splash_screen.dart';

import 'package:flutter/widgets.dart';
import 'package:my_quiz_app/signup/signup_screen.dart';

// We use name route

// All our routes will be available here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
