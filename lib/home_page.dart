import 'package:flutter/material.dart';
import 'package:horizon_v2/custom_widgets/custom_appbar.dart';
import 'package:horizon_v2/event_menu.dart';
import 'package:horizon_v2/custom_widgets/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Home"),
      drawer: NavDrawer(),
      body: EventMenu(),
    );
  }
}
