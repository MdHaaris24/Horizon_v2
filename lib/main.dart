import 'package:flutter/material.dart';
import 'package:horizon_v2/utils/theme/theme.dart';
import 'package:horizon_v2/welcome_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      home: WelcomeScreen(),
    ),
  );
}
