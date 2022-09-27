import 'package:flutter/material.dart';
import 'package:portfolio/models/experience_models.dart';

final List<Experience> educationList = [
  Experience(
      name: 'Politeknik Negeri Malang',
      position: 'D3 - Informatics Management',
      period: '2017 - 2020')
];

final List<Experience> experienceList = [
  Experience(
      name: 'PT. Anekapay Teknologi Indonesia',
      position: 'Vuetify Frontend',
      period: 'aug 2020 - dec 2021'),
  Experience(
      name: 'PT. Anekapay Teknologi Indonesia',
      position: 'Mobile Developer',
      period: 'dec 2021 - present')
];

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({Key? key}) : super(key: key);

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
                  : MediaQuery.of(context).size.height - 200,
              child: Padding(
                padding: MediaQuery.of(context).size.width <= 600
                    ? const EdgeInsets.only(top: 5, right: 5, left: 25)
                    : const EdgeInsets.only(top: 50, right: 10, left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/education.jpg',
                            width: 50,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "EDUCATION",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                        children: educationList
                            .map((educationList) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      educationList.name,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      educationList.position,
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      educationList.period,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ))
                            .toList())
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width <= 600
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width <= 600
                  ? MediaQuery.of(context).size.height / 2
                  : MediaQuery.of(context).size.height - 200,
              child: Padding(
                padding: MediaQuery.of(context).size.width <= 600
                    ? const EdgeInsets.only(top: 5, right: 5, left: 25)
                    : const EdgeInsets.only(
                        top: 50, bottom: 50, right: 10, left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/experience.png',
                            width: 50,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "EXPERIENCE",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                        children: experienceList
                            .map((experienceList) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        experienceList.name,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        experienceList.position,
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        experienceList.period,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ))
                            .toList())
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
