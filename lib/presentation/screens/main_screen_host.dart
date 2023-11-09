import 'package:flutter/material.dart';
import 'package:money_manager/presentation/screens/home_profile_tab.dart';
import 'package:money_manager/presentation/screens/home_screen_tab.dart';
import 'package:money_manager/presentation/utils/custom_colors.dart';

class MainScreenHost extends StatefulWidget {
  const MainScreenHost({super.key});

  @override
  State<MainScreenHost> createState() => _MainScreenHostState();
}

class _MainScreenHostState extends State<MainScreenHost> {
  int currentIndex = 0;

  Widget buildTabContent(int index) {
    switch (index) {
      case 0:
        return const HomeScreenTab();
      case 1:
        return const HomeScreenTab();
      case 2:
        return const HomeScreenTab();
      case 3:
        return const HomeProfileTab();
      default:
        return const HomeScreenTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildTabContent(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        selectedItemColor: CustomColors.secondaryDark,
        unselectedItemColor: CustomColors.fontLight,
        items: [
          BottomNavigationBarItem(icon: Image.asset("assets/icons/home-1.png"), label: "Home"),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/chart-vertical.png"), label: "Stat"),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/wallet.png"), label: "Wallet"),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/user-1.png"), label: "Profile"),
        ],
      ),
    );
  }
}
