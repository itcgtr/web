import 'package:flutter/material.dart';

import 'package:web/core/app_color.dart';

class _Column_4State extends State<Column_4> {
  // ########## BLOCK: Attributes // ##########

  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;

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
                          itemCount: _faculty.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: _columnsFor(width),
                                crossAxisSpacing: 1,
                                mainAxisSpacing: 1,
                                childAspectRatio: _aspectRatioFor(width),
                              ),
                          itemBuilder: (_, i) =>
                              _FacultyCard(member: _faculty[i]),
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
  int _columnsFor(double width) {
    if (width >= 1100) return 6;
    if (width >= 800) return 3;
    if (width >= 480) return 2;
    return 1;
  }

  double _aspectRatioFor(double width) {
    if (width >= 1100) return 0.65;
    if (width >= 800) return 0.72;
    if (width >= 480) return 0.70;
    return 0.85;
  }
  // ########## END BLOCK: Method // ##########
}

class Column_4 extends StatefulWidget {
  const Column_4({super.key});

  @override
  State<Column_4> createState() => _Column_4State();
}

class _FacultyMember {
  final String name;
  final String role;
  final String field;
  final String photo;
  final int hIndex;

  const _FacultyMember({
    required this.name,
    required this.role,
    required this.field,
    required this.photo,
    required this.hIndex,
  });
}

const List<_FacultyMember> _faculty = [
  _FacultyMember(
    name: 'Dr. Priya Menon',
    role: 'Professor & Head of Department',
    field: 'Machine Learning',
    photo:
        'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=400&auto=format&fit=crop&q=80',
    hIndex: 24,
  ),
  _FacultyMember(
    name: 'Dr. Arjun Sharma',
    role: 'Professor',
    field: 'Distributed Systems',
    photo:
        'https://images.unsplash.com/photo-1560250097-0b93528c311a?w=400&auto=format&fit=crop&q=80',
    hIndex: 20,
  ),
  _FacultyMember(
    name: 'Dr. Ritu Agarwal',
    role: 'Associate Professor',
    field: 'Computer Vision',
    photo:
        'https://images.unsplash.com/photo-1580489944761-15a19d654956?w=400&auto=format&fit=crop&q=80',
    hIndex: 18,
  ),
  _FacultyMember(
    name: 'Dr. Vikram Nair',
    role: 'Associate Professor',
    field: 'Cybersecurity',
    photo:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=400&auto=format&fit=crop&q=80',
    hIndex: 16,
  ),
  _FacultyMember(
    name: 'Dr. Sunita Rao',
    role: 'Assistant Professor',
    field: 'Bioinformatics',
    photo:
        'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?w=400&auto=format&fit=crop&q=80',
    hIndex: 14,
  ),
  _FacultyMember(
    name: 'Dr. Kartik Iyer',
    role: 'Assistant Professor',
    field: 'HCI',
    photo:
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&auto=format&fit=crop&q=80',
    hIndex: 11,
  ),
];

class _FacultyCard extends StatelessWidget {
  final _FacultyMember member;

  const _FacultyCard({required this.member});

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
              member.photo,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.medium,
              errorBuilder: (_, _, _) =>
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
                member.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: app_color.text,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                member.role,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 10, color: app_color.textMid),
              ),
              const SizedBox(height: 2),
              Text(
                member.field,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 10, color: app_color.gold),
              ),
              const SizedBox(height: 6),
              Text(
                'h-index: ${member.hIndex}',
                style: TextStyle(fontSize: 9, color: app_color.textMuted),
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
