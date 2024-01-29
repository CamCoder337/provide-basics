import 'package:flutter/material.dart';
import 'package:provider_basics/screens/home_screen.dart';
import 'package:provider_basics/screens/settings_screen.dart';


List<Widget> pages = const [
  HomeScreen(),
  SettingScreen(),
];

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState((){
            _currentIndex = index;
            print('Bouton ${index}');
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: ThemeData.light().primaryColor,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings, color: ThemeData.light().primaryColorDark), label: "Settings"),

        ],
      ),
    );
  }
}

