import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar(this.appbarTitle, {super.key});

  final String appbarTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black38,
      centerTitle: true,
      title: Text(
        appbarTitle,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
