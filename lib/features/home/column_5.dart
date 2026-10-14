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
        mainAxisAlignment: .spaceEvenly,
        crossAxisAlignment: .start,
        children: [
          const SizedBox(width: 20),
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 8,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: .start,
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
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 48),

                  LayoutBuilder(
                    builder: (context, constraints) {
                      final double width = constraints.maxWidth;

                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _news.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _columnsFor(width),
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: _aspectRatioFor(width),
                        ),
                        itemBuilder: (_, i) => _NewsCard(
                          item: _news[i],
                          featured: i == 0,
                          narrow: _isNarrow(width),
                        ),
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
  int _columnsFor(double width) => width >= 720 ? 2 : 1;

  bool _isNarrow(double width) => width < 500;

  double _aspectRatioFor(double width) {
    if (width >= 960) return 1.6;
    if (width >= 720) return 1.3;
    if (width >= 400) return 1.4;
    return 1.15;
  }
  // ########## END BLOCK: Method // ##########
}

class Column_5 extends StatefulWidget {
  const Column_5({super.key});

  @override
  State<Column_5> createState() => _Column_5State();
}

class _NewsItem {
  final String date;
  final String category;
  final String headline;
  final String summary;

  const _NewsItem({
    required this.date,
    required this.category,
    required this.headline,
    required this.summary,
  });
}

const List<_NewsItem> _news = [
  _NewsItem(
    date: 'Oct 8, 2026',
    category: 'Research',
    headline: 'Department Secures \$2.4M Grant for 6G Testbed Development',
    summary:
        'A joint proposal with three partner universities has been funded to build a campus-scale 6G experimental network for ultra-low-latency communication research.',
  ),
  _NewsItem(
    date: 'Sep 22, 2026',
    category: 'Event',
    headline: 'IEEE ComSoc Regional Conference Hosted on Campus',
    summary:
        'Over 300 researchers attended the two-day conference featuring keynotes on software-defined networking and satellite internet architecture.',
  ),
  _NewsItem(
    date: 'Sep 10, 2026',
    category: 'Achievement',
    headline: 'Student Team Wins National IoT Innovation Challenge',
    summary:
        'A team of four undergraduates developed a mesh-networked environmental monitoring system that earned first place among 86 competing universities.',
  ),
  _NewsItem(
    date: 'Aug 28, 2026',
    category: 'Industry',
    headline: 'New MoU Signed with Regional Telecom Operator for 5G Lab',
    summary:
        'The partnership provides students access to live 5G infrastructure for capstone projects and establishes a co-funded research fellowship program.',
  ),
];

class _NewsCard extends StatelessWidget {
  final _NewsItem item;
  final bool featured;
  final bool narrow;

  const _NewsCard({
    required this.item,
    required this.featured,
    required this.narrow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: featured ? app_color.white : app_color.bgAlt,
        border: Border.all(
          color: featured
              ? app_color.gold.withValues(alpha: 0.5)
              : app_color.border,
          width: featured ? 1.5 : 1.0,
        ),
      ),
      padding: EdgeInsets.all(narrow ? 18 : 28),
      child: Column(
        crossAxisAlignment: .start,
        mainAxisAlignment: .center,
        children: [
          Row(
            children: [
              Container(
                color: app_color.gold,
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                child: Text(
                  item.category.toUpperCase(),
                  style: TextStyle(
                    fontSize: 8,
                    color: app_color.white,
                    letterSpacing: .8,
                  ),
                ),
              ),

              const SizedBox(width: 10),

              Flexible(
                child: Text(
                  item.date,
                  style: TextStyle(fontSize: 8, color: app_color.textMuted),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            item.headline,
            style: TextStyle(fontSize: narrow ? 17 : 20, color: app_color.text),
          ),

          const SizedBox(height: 10),

          Text(
            item.summary,
            style: TextStyle(
              fontSize: 13,
              color: app_color.textMid,
              height: 1.7,
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
