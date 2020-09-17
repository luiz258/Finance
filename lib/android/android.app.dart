import 'package:Finance/android/views/login.view.dart';
import 'package:flutter/material.dart';

import 'android-theme.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: androidTheme(),
      home: LoginView(),
    );
  }
}