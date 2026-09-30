import 'package:flutter/material.dart';

import 'package:web/core/app_color.dart';

class _Column_3State extends State<Column_3> {
  // ########## BLOCK: Attributes // ##########

  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> groups = [
      {
        'number': '01',
        'title': 'Artificial Intelligence & Machine Learning',
        'description':
            'Deep learning architectures, reinforcement learning, explainable AI, and large-scale optimization.',
        'faculty': 'Dr. Priya Menon',
        'papers': '42 papers',
      },
      {
        'number': '02',
        'title': 'Systems & Distributed Computing',
        'description':
            'Operating systems, cloud-native infrastructure, fault-tolerant distributed systems, and edge computing.',
        'faculty': 'Dr. Arjun Sharma',
        'papers': '31 papers',
      },
      {
        'number': '03',
        'title': 'Computer Vision & Graphics',
        'description':
            'Real-time scene understanding, 3D reconstruction, neural rendering, and computational photography.',
        'faculty': 'Dr. Ritu Agarwal',
        'papers': '28 papers',
      },
      {
        'number': '04',
        'title': 'Cybersecurity & Privacy',
        'description':
            'Cryptographic protocols, network security, adversarial machine learning, and privacy-preserving computation.',
        'faculty': 'Dr. Vikram Nair',
        'papers': '24 papers',
      },
      {
        'number': '05',
        'title': 'Bioinformatics & Computational Biology',
        'description':
            'Genomic data analysis, protein structure prediction, and algorithmic approaches to biological systems.',
        'faculty': 'Dr. Sunita Rao',
        'papers': '19 papers',
      },
      {
        'number': '06',
        'title': 'Human-Computer Interaction',
        'description':
            'Accessible interfaces, mixed reality systems, cognitive load reduction, and inclusive design methods.',
        'faculty': 'Dr. Karthik Iyer',
        'papers': '16 papers',
      },
    ];

    return Container(
      color: Colors.transparent,
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
                  // Top section label with line: 03 — RESEARCH ──────
                  Row(
                    children: [
                      Text(
                        '03 — RESEARCH',
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
                        child: Container(
                          height: 1,
                          color: app_color.border,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),

                  // Heading and paragraph row
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final bool isDesktop = constraints.maxWidth > 750;
                      if (isDesktop) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Research Groups',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: app_color.text,
                                  fontFamily: 'Nakora',
                                  letterSpacing: -0.5,
                                ),
                              ),
                            ),
                            const SizedBox(width: 40),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Our six research groups publish in top-tier venues including NeurIPS, SOSP, CVPR, IEEE S&P, and Nature Computational Science.',
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  color: app_color.textMid,
                                  fontFamily: 'Nakora',
                                ),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Research Groups',
                              style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                color: app_color.text,
                                fontFamily: 'Nakora',
                                letterSpacing: -0.5,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Our six research groups publish in top-tier venues including NeurIPS, SOSP, CVPR, IEEE S&P, and Nature Computational Science.',
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.6,
                                color: app_color.textMid,
                                fontFamily: 'Nakora',
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 48),

                  // 2x3 Research Cards Grid
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final bool isDesktop = constraints.maxWidth > 800;

                      if (isDesktop) {
                        return Column(
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: _buildResearchCard(
                                      data: groups[0],
                                      row: 0,
                                      col: 0,
                                    ),
                                  ),
                                  Expanded(
                                    child: _buildResearchCard(
                                      data: groups[1],
                                      row: 0,
                                      col: 1,
                                    ),
                                  ),
                                  Expanded(
                                    child: _buildResearchCard(
                                      data: groups[2],
                                      row: 0,
                                      col: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: _buildResearchCard(
                                      data: groups[3],
                                      row: 1,
                                      col: 0,
                                    ),
                                  ),
                                  Expanded(
                                    child: _buildResearchCard(
                                      data: groups[4],
                                      row: 1,
                                      col: 1,
                                    ),
                                  ),
                                  Expanded(
                                    child: _buildResearchCard(
                                      data: groups[5],
                                      row: 1,
                                      col: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          children: groups
                              .map(
                                (data) => Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: _buildResearchCard(
                                    data: data,
                                    row: 0,
                                    col: 0,
                                    isMobile: true,
                                  ),
                                ),
                              )
                              .toList(),
                        );
                      }
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

class Column_3 extends StatefulWidget {
  const Column_3({super.key});

  @override
  State<Column_3> createState() => _Column_3State();
}

Widget _buildResearchCard({
  required Map<String, String> data,
  required int row,
  required int col,
  bool isMobile = false,
}) {
  final bool isMiddleCol = col == 1;

  Border border;
  if (isMobile) {
    border = Border.all(color: app_color.border);
  } else {
    border = Border(
      top: row == 0
          ? BorderSide(color: app_color.border)
          : BorderSide.none,
      bottom: BorderSide(color: app_color.border),
      left: col == 2
          ? BorderSide.none
          : BorderSide(color: app_color.border),
      right: col == 0
          ? BorderSide.none
          : BorderSide(color: app_color.border),
    );
  }

  return Container(
    padding: const EdgeInsets.fromLTRB(32, 34, 32, 32),
    decoration: BoxDecoration(
      color: isMiddleCol ? const Color(0xFFF8FAFD) : app_color.white,
      border: border,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data['number']!,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w900,
                color: app_color.watermark,
                fontFamily: 'Nakora',
                height: 1.1,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              data['title']!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: app_color.text,
                fontFamily: 'Nakora',
                height: 1.25,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              data['description']!,
              style: TextStyle(
                fontSize: 14,
                height: 1.55,
                color: app_color.textMid,
                fontFamily: 'Nakora',
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data['faculty']!,
              style: TextStyle(
                fontSize: 13,
                color: app_color.textMuted,
                fontFamily: 'Nakora',
              ),
            ),
            Text(
              data['papers']!,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: app_color.gold,
                fontFamily: 'Nakora',
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
