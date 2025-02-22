import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horizon_v2/authentication/login/login_screen.dart';
import 'package:horizon_v2/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: LoginScreen(),
    );
  }
}
