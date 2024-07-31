import 'package:flutter/material.dart';
import 'package:portfolio/models/skill_models.dart';

List<Skill> skills = [
  Skill(
    skill: "Flutter",
    percentage: 85,
  ),
  Skill(
    skill: "Vuetify",
    percentage: 50,
  ),
  Skill(
    skill: "Kotlin",
    percentage: 25,
  ),
  Skill(
    skill: "PHP",
    percentage: 25,
  ),
];

class SkillCard extends StatelessWidget {
  const SkillCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: Flex(
              direction: MediaQuery.of(context).size.width <= 600
                  ? Axis.vertical
                  : Axis.horizontal,
              children: [
                Expanded(
                  flex: MediaQuery.of(context).size.width <= 600 ? 0 : 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "SKILLS",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: MediaQuery.of(context).size.width <= 600
                            ? const EdgeInsets.symmetric(horizontal: 25)
                            : const EdgeInsets.symmetric(horizontal: 250),
                        child: Column(
                          children: skills
                              .map(
                                (skill) => Container(
                                  margin: const EdgeInsets.only(bottom: 15.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: skill.percentage,
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          alignment: Alignment.centerLeft,
                                          height: 38.0,
                                          child: Text(
                                            skill.skill,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                          color: Colors.blue[700],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        flex: 100 - skill.percentage,
                                        child: const Divider(
                                          color: Colors.indigo,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "${skill.percentage}%",
                                        style: const TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
