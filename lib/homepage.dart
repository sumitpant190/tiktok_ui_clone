import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/pages/home.dart';
import 'package:tiktok_ui_clone/pages/inbox.dart';
import 'package:tiktok_ui_clone/pages/plus.dart';
import 'package:tiktok_ui_clone/pages/profile.dart';
import 'package:tiktok_ui_clone/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> pages = [
    UserHome(),
    UserSearch(),
    UserPlus(),
    UserInbox(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.transparent,
          selectedIndex: currentIndex,
          onDestinationSelected: _navigateBottomBar,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'home'),
            NavigationDestination(icon: Icon(Icons.search), label: 'search'),
            NavigationDestination(icon: Icon(Icons.add_box), label: ''),
            NavigationDestination(
                icon: Icon(Icons.chat_bubble_rounded), label: 'inbox'),
            NavigationDestination(icon: Icon(Icons.person), label: 'pofile')
          ]),
    );
  }
}
