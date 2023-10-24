import 'package:flutter/material.dart';
import 'package:insta_clone/pages/account.dart';
import 'package:insta_clone/pages/home.dart';
import 'package:insta_clone/pages/reels.dart';
import 'package:insta_clone/pages/search.dart';
import 'package:insta_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex=0;

  void _navigationBottonNavBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  // different pages to navigate to

  final List<Widget>_children=[
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottonNavBar,
        type: BottomNavigationBarType.fixed,// Si no le pongo fixed no aparece el BottomNavigationBar
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
