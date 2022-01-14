// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this, avoid_print

import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_different_spinner/screens/doublebounce_spinner.dart';
import 'package:flutter_different_spinner/screens/fadingcube.dart';
import 'package:flutter_different_spinner/screens/ring_spinner.dart';
import 'package:flutter_different_spinner/screens/threeinout_spinner.dart';
import 'package:flutter_different_spinner/screens/wave_spinner_.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

//$$$$$$$$$$$$$$$$$$$$$$$$$
//** Instagram :
//  ** @CodeWithFlexz
// ----------------
//** Github :
//  ** AmirBayat0
// ----------------
//** Youtube :
//  ** Programming with Flexz
//$$$$$$$$$$$$$$$$$$$$$$$$$

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      bottomNavigationBar: buildCustomNavigationBar(),
    );
  }
// *AppBar Component
  buildAppBar() {
    return AppBar(
      elevation: 2,
      centerTitle: true,
      title: Text(
        "@CodeWithFlexz",
        style: TextStyle(
          color: Color(0xff040307),
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color(0xfffdfdfd),
    );
  }

// *Body Component
  buildBody() {
    switch (_currentIndex) {
      case 0:
        return WaveSpinner();
      case 1:
        return DoubleBounceSpinner();
      case 2:
        return RingSpinner();
      case 3:
        return ThreeInOutSpinner();
      case 4:
        return FadingCubeSpinner();
    }
  }

// *CustomNavigationBar Component
  CustomNavigationBar buildCustomNavigationBar() {
    return CustomNavigationBar(
      elevation: 2,
      iconSize: 26.5,
      selectedColor: Color(0xff040307),
      strokeColor: Color(0x30040307),
      unSelectedColor: Color(0xffacacac),
      backgroundColor: Colors.white,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.account_circle),
        ),
      ],
    );
  }
}
