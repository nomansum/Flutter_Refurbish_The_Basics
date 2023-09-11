import 'package:demo_project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/home.svg'), label: "HOME"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/favourite.svg'),
              label: "Favourite"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/message.svg'),
              label: "message"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/message.svg'),
              label: "Add Post"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/profile.svg'),
              label: "PROFILE"),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        backgroundColor: Colors.amber,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text("Favourite"),
    ),
    Center(
      child: Text("Add Post"),
    ),
    Center(
      child: Text("Message"),
    ),
    Center(
      child: Text("User"),
    ),
  ];
}
