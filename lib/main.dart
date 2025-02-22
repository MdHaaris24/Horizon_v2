import 'package:flutter/material.dart';
import 'package:horizon_v2/app.dart';
import 'package:horizon_v2/authentication/login/login_screen.dart';
import 'package:horizon_v2/authentication/reset_password.dart';
import 'package:horizon_v2/utils/theme/theme.dart';
import 'package:horizon_v2/welcome_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    ),
  );
}

