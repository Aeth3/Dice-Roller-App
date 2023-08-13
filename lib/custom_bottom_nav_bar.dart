import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_rounded), label: 'Chats'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), label: 'Profile')
      ],
      backgroundColor: Theme.of(context).primaryColorLight,
    );
  }
}
