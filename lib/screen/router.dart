import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:twitter/screen/password.dart';
import 'package:twitter/screen/signup.dart';

import 'login.dart';
import 'mainPage.dart';

bool isAuthenticated = false;
GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) =>isAuthenticated? MainPage(): Login(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) =>  MainPage(),
    ),
    GoRoute(
      path: "/password",
      builder: (context, state) =>  PasswordPage(),
    ),
        GoRoute(
      path: "/signup",
      builder: (context, state) =>  SignUp(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) =>  Login(),
    )
]);

  // );
