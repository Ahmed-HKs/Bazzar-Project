import 'package:depi_flutter/firstProject/ProfileScreen.dart';
//import 'package:depi_flutter/screens/fav.dart';
import 'package:depi_flutter/firstProject/home_screen.dart';
import 'package:depi_flutter/firstProject/category.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  List <Widget> screens = [
    HomeScreen(),
    CategoryScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF54408C),
        currentIndex: index,
        onTap: (newIndex) {
          index = newIndex;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.subtitles_rounded), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile")
        ],
      ),
    );
  }
}
