import 'package:coffee_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff010714),
          body: SingleChildScrollView(
            child: Column(
              children: [
                HomePage(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              gradient: SweepGradient(
                transform: GradientRotation(3.14 / 4),
                colors: <Color>[
                  Color(0xff303030).withOpacity(.3),
                  Color(0xff0E1116).withOpacity(.9),
                ],
              ),
            ),
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Ionicons.md_heart),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: '',
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: Color(0xffD17842),
              unselectedItemColor: Colors.white,
              backgroundColor: Colors.transparent,
              iconSize: 30,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
