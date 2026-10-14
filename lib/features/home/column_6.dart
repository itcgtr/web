import 'package:flutter/material.dart';

import 'package:web/core/app_color.dart';

class _Column_6State extends State<Column_6> {
  // ########## BLOCK: Attributes // ##########

  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
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
                        '06 — CONTACT',
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
                    'Get in Touch',
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
                      if (_isWide(constraints.maxWidth)) {
                        return Row(
                          crossAxisAlignment: .start,
                          children: [
                            const Expanded(child: _Info()),
                            const SizedBox(width: 50),
                            const Expanded(child: _Form()),
                          ],
                        );
                      }
                      return const Column(
                        children: [_Info(), SizedBox(height: 48), _Form()],
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
  bool _isWide(double width) => width >= 680;
  // ########## END BLOCK: Method // ##########
}

class Column_6 extends StatefulWidget {
  const Column_6({super.key});

  @override
  State<Column_6> createState() => _Column_6State();
}

class _ContactDetail {
  final String label;
  final String value;

  const _ContactDetail({required this.label, required this.value});
}

const List<_ContactDetail> _contactDetails = [
  _ContactDetail(
    label: 'Address',
    value: 'Building 12, Floor 3, University Campus, Phnom Penh',
  ),
  _ContactDetail(label: 'Phone', value: '+855 23 123 456'),
  _ContactDetail(label: 'Email', value: 'telecom@university.edu.kh'),
  _ContactDetail(
    label: 'Office Hours',
    value: 'Monday – Friday, 8:00 AM – 5:00 PM',
  ),
];

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    children: [
      for (final detail in _contactDetails)
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 18, top: 8),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: app_color.border)),
          ),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                detail.label.toUpperCase(),
                style: TextStyle(
                  fontSize: 9,
                  color: app_color.gold,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                detail.value,
                style: TextStyle(
                  fontSize: 14,
                  color: app_color.textMid,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
    ],
  );
}

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    children: [
      Text(
        'Send a Message',
        style: TextStyle(fontSize: 23, color: app_color.text),
      ),
      const SizedBox(height: 22),
      const _Field(label: 'Full Name', hint: 'Enter your full name'),
      const _Field(label: 'Email Address', hint: 'Enter your email'),
      const _Field(label: 'Subject', hint: 'Enter subject'),
      const _Field(
        label: 'Message',
        hint: 'Write your message here...',
        lines: 5,
      ),
      Align(
        alignment: .centerLeft,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: app_color.gold,
            foregroundColor: app_color.white,
            shape: const RoundedRectangleBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
          ),
          child: const Text(
            'SEND MESSAGE',
            style: TextStyle(
              fontSize: 10,
              letterSpacing: 1,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    ],
  );
}

class _Field extends StatelessWidget {
  final String label;
  final String hint;
  final int lines;

  const _Field({required this.label, required this.hint, this.lines = 1});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          label.toUpperCase(),
          style: TextStyle(
            fontSize: 9,
            color: app_color.textMuted,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          maxLines: lines,
          minLines: lines,
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(fontSize: 13, color: app_color.textMuted),
            filled: true,
            fillColor: app_color.bgAlt,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 13,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: app_color.border),
              borderRadius: BorderRadius.zero,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: app_color.border),
              borderRadius: BorderRadius.zero,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: app_color.gold),
              borderRadius: BorderRadius.zero,
            ),
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
      home: const Column_6(),
    ),
  );
}
