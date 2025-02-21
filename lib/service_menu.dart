import 'package:flutter/material.dart';
import 'package:horizon_v2/custom_widgets/custom_appbar.dart';
import 'package:horizon_v2/custom_widgets/navigation_drawer.dart';
import 'package:horizon_v2/service_menu1.dart';

class ServiceMenu extends StatelessWidget {
  final Map<String, String> menuItems;

  const ServiceMenu({required this.menuItems, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: menuItems["title"]!),
      drawer: NavDrawer(),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    menuItems["image"]!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          menuItems["title"]!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ServiceMenu1(
                                  menuItems: menuItems,
                                ),
                              ),
                            );
                          },
                          child: Text("Learn More"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
