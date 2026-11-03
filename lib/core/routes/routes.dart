import 'package:eventhub/features/auth/presentation/login_screen.dart';
import 'package:eventhub/features/auth/presentation/signin_screen.dart';
import 'package:eventhub/features/introduction/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// global key
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Routes {
  static const String splashScreen = '/';
  static const String signinScreen = 'signin';
  static const String loginScreen = 'login';
  
  static GoRouter routes = GoRouter(
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: signinScreen,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}