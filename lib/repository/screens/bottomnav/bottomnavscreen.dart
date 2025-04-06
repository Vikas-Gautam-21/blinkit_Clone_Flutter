import 'package:flutter/material.dart';
import 'package:flutter_application_2/repository/screens/cart/cartscreen.dart';
import 'package:flutter_application_2/repository/screens/category/categoryscreen.dart';
import 'package:flutter_application_2/repository/screens/home/homescreen.dart';
import 'package:flutter_application_2/repository/screens/print/printscreen.dart';
import 'package:flutter_application_2/repository/widgtes/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(data: [], categroy: [], grocerykitchen: []),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: "shopping-bag 1.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: "category 1.png"),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: "printer 1.png"),
            label: "Print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
