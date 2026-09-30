import 'package:flutter/material.dart';

import 'package:web/core/app_color.dart';

class _Column_2State extends State<Column_2> {
  // ########## BLOCK: Attributes // ##########

  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
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
                  // Top section label with extending line: 02 — PROGRAMS ──────
                  Row(
                    children: [
                      Text(
                        '02 — PROGRAMS',
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

                  // Section Title: Academic Programs
                  Text(
                    'Academic Programs',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: app_color.text,
                      fontFamily: 'Nakora',
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 36),

                  // 3 Connected Program Cards
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final bool isDesktop = constraints.maxWidth > 750;

                      if (isDesktop) {
                        return IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: _buildProgramCard(
                                  watermark: 'B.Tech.',
                                  title: 'Bachelor of Technology',
                                  subtitle: 'COMPUTER SCIENCE & ENGINEERING',
                                  description:
                                      'A rigorous undergraduate program grounding students in algorithms, systems, and the mathematical foundations of computing.',
                                  tags: const ['4 years', '120 seats'],
                                  position: _CardPosition.first,
                                ),
                              ),
                              Expanded(
                                child: _buildProgramCard(
                                  watermark: 'M.Tech.',
                                  title: 'Master of Technology',
                                  subtitle: 'COMPUTER SCIENCE & ENGINEERING',
                                  description:
                                      'Advanced coursework and research in specialized tracks including AI/ML, distributed systems, and computer vision.',
                                  tags: const ['2 years', '40 seats'],
                                  isHighlighted: true,
                                  position: _CardPosition.middle,
                                ),
                              ),
                              Expanded(
                                child: _buildProgramCard(
                                  watermark: 'Ph.D.',
                                  title: 'Doctor of Philosophy',
                                  subtitle: 'COMPUTER SCIENCE',
                                  description:
                                      'Original research at the frontiers of computing. Students work closely with faculty on funded projects published in top-tier venues.',
                                  tags: const ['3-5 years', '18 seats/year'],
                                  position: _CardPosition.last,
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Column(
                          children: [
                            _buildProgramCard(
                              watermark: 'B.Tech.',
                              title: 'Bachelor of Technology',
                              subtitle: 'COMPUTER SCIENCE & ENGINEERING',
                              description:
                                  'A rigorous undergraduate program grounding students in algorithms, systems, and the mathematical foundations of computing.',
                              tags: const ['4 years', '120 seats'],
                              position: _CardPosition.standalone,
                            ),
                            const SizedBox(height: 20),
                            _buildProgramCard(
                              watermark: 'M.Tech.',
                              title: 'Master of Technology',
                              subtitle: 'COMPUTER SCIENCE & ENGINEERING',
                              description:
                                  'Advanced coursework and research in specialized tracks including AI/ML, distributed systems, and computer vision.',
                              tags: const ['2 years', '40 seats'],
                              isHighlighted: true,
                              position: _CardPosition.standalone,
                            ),
                            const SizedBox(height: 20),
                            _buildProgramCard(
                              watermark: 'Ph.D.',
                              title: 'Doctor of Philosophy',
                              subtitle: 'COMPUTER SCIENCE',
                              description:
                                  'Original research at the frontiers of computing. Students work closely with faculty on funded projects published in top-tier venues.',
                              tags: const ['3-5 years', '18 seats/year'],
                              position: _CardPosition.standalone,
                            ),
                          ],
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

class Column_2 extends StatefulWidget {
  const Column_2({super.key});

  @override
  State<Column_2> createState() => _Column_2State();
}

enum _CardPosition { first, middle, last, standalone }

Widget _buildProgramCard({
  required String watermark,
  required String title,
  required String subtitle,
  required String description,
  required List<String> tags,
  bool isHighlighted = false,
  required _CardPosition position,
}) {
  Border border;
  switch (position) {
    case _CardPosition.first:
      border = Border(
        top: BorderSide(color: app_color.border),
        bottom: BorderSide(color: app_color.border),
        left: BorderSide(color: app_color.border),
        right: BorderSide.none,
      );
      break;
    case _CardPosition.middle:
      border = Border(
        top: BorderSide(
          color: isHighlighted ? app_color.gold : app_color.border,
          width: isHighlighted ? 3.0 : 1.0,
        ),
        bottom: BorderSide(color: app_color.border),
        left: BorderSide(color: app_color.border),
        right: BorderSide(color: app_color.border),
      );
      break;
    case _CardPosition.last:
      border = Border(
        top: BorderSide(color: app_color.border),
        bottom: BorderSide(color: app_color.border),
        left: BorderSide.none,
        right: BorderSide(color: app_color.border),
      );
      break;
    case _CardPosition.standalone:
      border = Border(
        top: BorderSide(
          color: isHighlighted ? app_color.gold : app_color.border,
          width: isHighlighted ? 3.0 : 1.0,
        ),
        bottom: BorderSide(color: app_color.border),
        left: BorderSide(color: app_color.border),
        right: BorderSide(color: app_color.border),
      );
      break;
  }

  return Container(
    padding: const EdgeInsets.fromLTRB(36, 40, 36, 36),
    decoration: BoxDecoration(
      color: isHighlighted ? const Color(0xFFF8FAFD) : app_color.white,
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
              watermark,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w900,
                color: app_color.watermark,
                fontFamily: 'Nakora',
                height: 1.1,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: app_color.text,
                fontFamily: 'Nakora',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.8,
                color: app_color.gold,
                fontFamily: 'Nakora',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: TextStyle(
                fontSize: 14.5,
                height: 1.6,
                color: app_color.textMid,
                fontFamily: 'Nakora',
              ),
            ),
          ],
        ),
        const SizedBox(height: 36),
        Row(
          children: tags
              .map(
                (tag) => Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: app_color.border),
                    ),
                    child: Text(
                      tag,
                      style: TextStyle(
                        fontSize: 12.5,
                        color: app_color.textMid,
                        fontFamily: 'Nakora',
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    ),
  );
}
