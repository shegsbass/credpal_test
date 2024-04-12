import 'package:credpal_test/presentation/const/app_colors.dart';
import 'package:credpal_test/presentation/const/global.dart';
import 'package:credpal_test/presentation/screens/homescreen.dart';
import 'package:credpal_test/presentation/screens/invest_screen.dart';
import 'package:credpal_test/presentation/screens/menu_screen.dart';
import 'package:credpal_test/presentation/screens/payment_screen.dart';
import 'package:credpal_test/presentation/screens/shopping_sceen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ShoppingScreen(),
    InvestScreen(),
    PaymentScreen(),
    MenuScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black, // Set your active item color here
        unselectedItemColor: Colors.grey, // Set your inactive item color here
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.shop),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.shopping_bag),
            label: 'Invest',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.wallet_3),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.element_3),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}

