import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:quick_food_delivery/pages/home.dart';
import 'package:quick_food_delivery/pages/order.dart';
import 'package:quick_food_delivery/pages/profile.dart';
import 'package:quick_food_delivery/pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndexTab = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homePage;
  late Wallet wallet;
  late Profile profile;
  late Order order;

  @override
  void initState() {
    profile = const Profile();
    homePage = const HomePage();
    order = const Order();
    wallet = const Wallet();
    pages = [homePage, wallet, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.black,
        height: 65,
        animationDuration: const Duration(milliseconds: 200),
        onTap: (int index) {
          setState(() {
            currentIndexTab = index;
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          )
        ],
      ),
      body: pages[currentIndexTab],
    );
  }
}
