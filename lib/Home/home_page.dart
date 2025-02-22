import 'package:flutter/material.dart';
import 'package:horizon_v2/Home/primary_header_container.dart';
import '../appbar&navbar/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Container(
                child: Column(
                  children: [
                    // Appbar
                    THomeAppBar()

                    // Searchbar

                    // Categories
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}