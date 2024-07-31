import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'CONTACT',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () async {
              await launchUrl(
                Uri(
                  scheme: 'mailto',
                  path: 'akufarhan7@gmail.com',
                ),
              );
            },
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Image.asset(
                    'assets/images/email.png',
                    width: 50,
                  ),
                ),
                const Text(
                  'akufarhan7@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              await launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/farhan-zuhdi-8b6609223/'));
            },
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Image.asset(
                    'assets/images/linkedin.png',
                    width: 50,
                  ),
                ),
                const Text(
                  'Farhan Zuhdi',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              await launchUrl(Uri.parse('https://wa.me/6285790525682'));
            },
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Image.asset(
                    'assets/images/whatsapp.png',
                    width: 50,
                  ),
                ),
                const Text(
                  '+62 85790525682',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
