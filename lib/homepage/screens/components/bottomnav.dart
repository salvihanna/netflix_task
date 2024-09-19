import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/homepage/controllers/bottom_nav_controller.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = Get.find();

    return Obx(
      () => BottomNavigationBar(
        currentIndex: bottomNavController.selectedIndex.value,
        onTap: (index) {
          bottomNavController.changeIndex(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
      ),
    );
  }
}
