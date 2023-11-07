import 'package:flutter/material.dart';
import 'package:money_manager/presentation/utils/custom_colors.dart';

class MainScreenHost extends StatelessWidget {
  const MainScreenHost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index){},
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