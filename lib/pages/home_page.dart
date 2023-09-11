import 'package:demo_project/components/post_item.dart';
import 'package:demo_project/styles/app_colors.dart';
import 'package:demo_project/styles/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text("DEMO APP: REFURBISHING FLUTTER"),
        actions: [
          GestureDetector(
              onTap: () {
                print("WORKED");
              },
              child: Icon(Icons.location_on_outlined))
        ],
      ),
      body: ListView(
        children: _mockUsersFromServer(),
      ),
    );
  }

  List<Widget> _mockUsersFromServer() {
    List<Widget> users = [];

    for (var i = 0; i < 20; ++i) {
      users.add(PostItem());
    }
    return users;
  }
}
