import 'package:flutter/material.dart';
import 'package:portfolio/core/components/drawer_navbar.dart';
import 'package:portfolio/core/components/header_navbar.dart';
import 'package:portfolio/modules/about_page.dart';
import 'package:portfolio/modules/contact_page.dart';
import 'package:portfolio/modules/experience_page.dart';
import 'package:portfolio/modules/skill_page.dart';

class Index extends StatelessWidget {
  Index({Key? key}) : super(key: key);
  final ScrollController scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          scale: 3.5,
        ),
        backgroundColor: Colors.blue[800],
        toolbarHeight: 66,
        elevation: 2,
        actions: [
          MediaQuery.of(context).size.width <= 600
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : HeaderNavbar(
                  scrollController: scrollController,
                ),
        ],
      ),
      endDrawer: MediaQuery.of(context).size.width <= 600
          ? DrawerNavbar(scrollController: scrollController)
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: const [
                  About(),
                  SizedBox(height: 50),
                  ExperienceCard(),
                  SizedBox(height: 50),
                  SkillCard(),
                  SizedBox(height: 50),
                  Contact(),
                ],
              ),
            ),
            // const SocialIconsBar(),
          ],
        ),
      ),
    );
  }
}
