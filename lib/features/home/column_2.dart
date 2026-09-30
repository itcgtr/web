import 'package:flutter/material.dart';
import 'dart:ui' show ImageFilter;

class AppColors {
  static const bg = Color(0xFFFDFDFF);
  static const bgAlt = Color(0xFFF7F8FC);
  static const textMuted = Color(0xFF7A85A0);
  static const text = Color(0xFF14213D);
  static const textMid = Color(0xFF4A5270);
  static const gold = Color(0xFFC49A3C);
  static const goldDark = Color(0xFFA67B26);
  static const white = Color(0xFFFFFFFF);
  static const card = Color(0xFFFBF5E6);
  static const border = Color(0xFFE2E8F0);
  static const watermark = Color(0xFFD6E0EC);
}

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.white, Colors.transparent],
                  stops: [0.0, 0.15, 0.40],
                ).createShader(rect);
              },
              blendMode: BlendMode.dstIn,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: Image.asset(
                  'asset/campus.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(color: AppColors.bg),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.bg.withValues(alpha: 0.0),
                    AppColors.bg.withValues(alpha: 0.45),
                    AppColors.bg,
                  ],
                  stops: const [0.0, 0.45, 1.0],
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [column_2()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget column_2() {
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
                    const Text(
                      '02 — PROGRAMS',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.5,
                        color: AppColors.gold,
                        fontFamily: 'Nakora',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: AppColors.border,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),

                // Section Title: Academic Programs
                const Text(
                  'Academic Programs',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text,
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
      border = const Border(
        top: BorderSide(color: AppColors.border),
        bottom: BorderSide(color: AppColors.border),
        left: BorderSide(color: AppColors.border),
        right: BorderSide.none,
      );
      break;
    case _CardPosition.middle:
      border = Border(
        top: BorderSide(
          color: isHighlighted ? AppColors.gold : AppColors.border,
          width: isHighlighted ? 3.0 : 1.0,
        ),
        bottom: const BorderSide(color: AppColors.border),
        left: const BorderSide(color: AppColors.border),
        right: const BorderSide(color: AppColors.border),
      );
      break;
    case _CardPosition.last:
      border = const Border(
        top: BorderSide(color: AppColors.border),
        bottom: BorderSide(color: AppColors.border),
        left: BorderSide.none,
        right: BorderSide(color: AppColors.border),
      );
      break;
    case _CardPosition.standalone:
      border = Border(
        top: BorderSide(
          color: isHighlighted ? AppColors.gold : AppColors.border,
          width: isHighlighted ? 3.0 : 1.0,
        ),
        bottom: const BorderSide(color: AppColors.border),
        left: const BorderSide(color: AppColors.border),
        right: const BorderSide(color: AppColors.border),
      );
      break;
  }

  return Container(
    padding: const EdgeInsets.fromLTRB(36, 40, 36, 36),
    decoration: BoxDecoration(
      color: isHighlighted ? const Color(0xFFF8FAFD) : AppColors.white,
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
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w900,
                color: AppColors.watermark,
                fontFamily: 'Nakora',
                height: 1.1,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.text,
                fontFamily: 'Nakora',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.8,
                color: AppColors.gold,
                fontFamily: 'Nakora',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14.5,
                height: 1.6,
                color: AppColors.textMid,
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
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Text(
                      tag,
                      style: const TextStyle(
                        fontSize: 12.5,
                        color: AppColors.textMid,
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
