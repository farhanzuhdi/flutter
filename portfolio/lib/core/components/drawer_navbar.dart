import 'package:flutter/material.dart';
import 'package:portfolio/core/components/header_navbar.dart';

class DrawerNavbar extends StatelessWidget {
  final ScrollController scrollController;
  const DrawerNavbar({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        title: const Text("Farhan Zuhdi"),
        actions: [Image.asset('assets/images/logo.png')],
      ),
      body: Container(
        child: Center(
          child: HeaderNavbar(
            scrollController: scrollController,
          ),
        ),
        color: Colors.blue[800],
      ),
    );
  }
}
