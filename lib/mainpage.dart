import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/account.dart';
import 'pages/reels.dart';
import 'pages/search.dart';
import 'pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   int _selectedIndex =0;
   void _navigateBottomNavBar(int index){
     setState(() {
       _selectedIndex=index;

     });
   }
   //deffrent  page to navigate to
   final List<Widget>_children=[
    HomeUser(),
    UserSearch() ,
    UserReels(),
    UserShop(),
    UserAcount(),
    
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_children[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'account'),
            ]),
    );
  }
}
