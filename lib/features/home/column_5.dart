import 'package:flutter/material.dart';
import 'package:web/core/app_color.dart';

class _Column_5State extends State<Column_5> {
  // ########## BLOCK: Attributes // ##########

  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
    return Container(
      color: app_color.bg,
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 20),
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 8,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '05 — NEWS',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2.5,
                          color: app_color.gold,
                          fontFamily: 'Nakora',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(height: 1, color: app_color.border),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),

                  Text(
                    'Latest from the Department',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: app_color.text,
                      fontFamily: 'Nakora',
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 48),

                  LayoutBuilder(
                    builder: (context, constraints) {
                      final wide = constraints.maxWidth >= 700;
                      final narrow = constraints.maxWidth < 600;

                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _news.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: wide ? 2 : 1,
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 1,
                          childAspectRatio: wide ? 1.5 : 1.25,
                        ),
                        itemBuilder: (_, i) {
                          return _NewsCard(
                            data: _news[i],
                            featured: i == 0,
                            narrow: narrow,
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }

  // ########## END BLOCK: Design // ##########

  // ########## BLOCK: Methods // ##########

  // ########## END BLOCK: Method // ##########
}

class Column_5 extends StatefulWidget {
  const Column_5({super.key});

  @override
  State<Column_5> createState() => _Column_5State();
}

const _news = <(String, String, String, String)>[
  (
    'Oct 8, 2026',
    'Research',
    'Department Secures \$2.4M Grant for 6G Testbed Development',
    'A joint proposal with three partner universities has been funded to build a campus-scale 6G experimental network for ultra-low-latency communication research.',
  ),
  (
    'Sep 22, 2026',
    'Event',
    'IEEE ComSoc Regional Conference Hosted on Campus',
    'Over 300 researchers attended the two-day conference featuring keynotes on software-defined networking and satellite internet architecture.',
  ),
  (
    'Sep 10, 2026',
    'Achievement',
    'Student Team Wins National IoT Innovation Challenge',
    'A team of four undergraduates developed a mesh-networked environmental monitoring system that earned first place among 86 competing universities.',
  ),
  (
    'Aug 28, 2026',
    'Industry',
    'New MoU Signed with Regional Telecom Operator for 5G Lab',
    'The partnership provides students access to live 5G infrastructure for capstone projects and establishes a co-funded research fellowship program.',
  ),
];

class _NewsCard extends StatelessWidget {
  final (String, String, String, String) data;
  final bool featured;
  final bool narrow;

  const _NewsCard({
    required this.data,
    required this.featured,
    required this.narrow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: featured ? app_color.white : app_color.bgAlt,
      padding: EdgeInsets.all(narrow ? 18 : 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                color: app_color.gold,
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                child: Text(
                  data.$2.toUpperCase(),
                  style: TextStyle(
                    fontSize: 8,
                    color: app_color.white,
                    letterSpacing: .8,
                    fontFamily: 'Nakora',
                  ),
                ),
              ),

              const SizedBox(width: 10),

              Flexible(
                child: Text(
                  data.$1,
                  style: TextStyle(
                    fontSize: 8,
                    color: app_color.textMuted,
                    fontFamily: 'Nakora',
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            data.$3,
            style: TextStyle(
              fontSize: narrow ? 17 : 20,
              color: app_color.text,
              fontFamily: 'Nakora',
            ),
          ),

          const SizedBox(height: 10),

          Text(
            data.$4,
            style: TextStyle(
              fontSize: 13,
              color: app_color.textMid,
              height: 1.7,
              fontFamily: 'Nakora',
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const Column_5(),
    ),
  );
}
