import 'package:flutter/material.dart';

import 'package:web/core/app_color.dart';

class _Column_4State extends State<Column_4> {
  // ########## BLOCK: Attributes // ##########
  static const List<(String, String, String, String, String)> _facultyData = [
    (
      'Dr. Priya Menon',
      'Professor & Head of Department',
      'Machine Learning',
      'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=400&auto=format&fit=crop&q=80',
      '24',
    ),
    (
      'Dr. Arjun Sharma',
      'Professor',
      'Distributed Systems',
      'https://images.unsplash.com/photo-1560250097-0b93528c311a?w=400&auto=format&fit=crop&q=80',
      '20',
    ),
    (
      'Dr. Ritu Agarwal',
      'Associate Professor',
      'Computer Vision',
      'https://images.unsplash.com/photo-1580489944761-15a19d654956?w=400&auto=format&fit=crop&q=80',
      '18',
    ),
    (
      'Dr. Vikram Nair',
      'Associate Professor',
      'Cybersecurity',
      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=400&auto=format&fit=crop&q=80',
      '16',
    ),
    (
      'Dr. Sunita Rao',
      'Assistant Professor',
      'Bioinformatics',
      'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?w=400&auto=format&fit=crop&q=80',
      '14',
    ),
    (
      'Dr. Kartik Iyer',
      'Assistant Professor',
      'HCI',
      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&auto=format&fit=crop&q=80',
      '11',
    ),
  ];
  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final wide = constraints.maxWidth >= 1000;
        final count = wide ? 6 : (constraints.maxWidth >= 600 ? 3 : 2);

        return Container(
          color: app_color.white,
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
                            '04 — FACULTY',
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

                      Text(
                        'Our Faculty',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: app_color.text,
                          fontFamily: 'Nakora',
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 32),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: app_color.border),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _facultyData.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: count,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 1,
                            childAspectRatio: 0.62,
                          ),
                          itemBuilder: (_, i) =>
                              _FacultyCard(data: _facultyData[i]),
                        ),
                      ),
                      const SizedBox(height: 32),

                      Center(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            side: BorderSide(color: app_color.gold),
                            shape: const RoundedRectangleBorder(),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 14,
                            ),
                          ),
                          child: Text(
                            'VIEW ALL 24 FACULTY →',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                              color: app_color.gold,
                              fontFamily: 'Nakora',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        );
      },
    );
  }
  // ########## END BLOCK: Design // ##########

  // ########## BLOCK: Methods // ##########
  // ########## END BLOCK: Method // ##########
}

class Column_4 extends StatefulWidget {
  const Column_4({super.key});

  @override
  State<Column_4> createState() => _Column_4State();
}

class _FacultyCard extends StatelessWidget {
  final (String, String, String, String, String) data;

  const _FacultyCard({required this.data});

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: app_color.white,
      border: Border.all(color: app_color.border, width: 0.5),
    ),
    padding: const EdgeInsets.only(bottom: 12),
    child: Column(
      crossAxisAlignment: .start,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            color: app_color.bgAlt,
            child: Image.network(
              data.$4,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.medium,
              errorBuilder: (_, __, ___) =>
                  const Icon(Icons.person, size: 48, color: Colors.black26),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 10, 0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                data.$1,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: app_color.text,
                  fontFamily: 'Nakora',
                ),
              ),
              const SizedBox(height: 3),
              Text(
                data.$2,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10,
                  color: app_color.textMid,
                  fontFamily: 'Nakora',
                ),
              ),
              const SizedBox(height: 2),
              Text(
                data.$3,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10,
                  color: app_color.gold,
                  fontFamily: 'Nakora',
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'h-index: ${data.$5}',
                style: TextStyle(
                  fontSize: 9,
                  color: app_color.textMuted,
                  fontFamily: 'Nakora',
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const Column_4(),
    ),
  );
}
