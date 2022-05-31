import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width <= 600
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width <= 600
                  ? MediaQuery.of(context).size.height / 2
                  : MediaQuery.of(context).size.height - 70,
              child: Padding(
                padding: MediaQuery.of(context).size.width <= 600
                    ? const EdgeInsets.all(5.0)
                    : const EdgeInsets.only(
                        top: 50, bottom: 50, right: 10, left: 100),
                child: Image.asset(
                  'assets/images/image1.png',
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width <= 600
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width <= 600
                  ? MediaQuery.of(context).size.height / 2
                  : MediaQuery.of(context).size.height - 70,
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.width <= 600
                      ? 220 / (MediaQuery.of(context).size.width * 0.0025)
                      : 200,
                  width: MediaQuery.of(context).size.width <= 600
                      ? MediaQuery.of(context).size.width * 0.85
                      : 380,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          spreadRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            'ABOUT ME',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'I am Farhan Zuhdi\nI have been interested in technology since graduating from high school\nFinally, I decided to take college majoring in informatics\nWhile in college I interested in mobile programming',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
