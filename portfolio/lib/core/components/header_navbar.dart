import 'package:flutter/material.dart';

class HeaderNavbar extends StatelessWidget {
  final ScrollController scrollController;
  const HeaderNavbar({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600
        ? Column(
            children: getWidgets(scrollController, context, true),
          )
        : Row(
            children: getWidgets(scrollController, context, false),
          );
  }

  List<Widget> getWidgets(
      ScrollController scrollController, BuildContext context, bool isMobile) {
    int scrollDuration = isMobile ? 800 : 500;
    return [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              0,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'About',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 600 : 400,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Experience',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 1200 : 900,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Skills',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 1700 : 1400,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Contact',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      )
    ];
  }
}
