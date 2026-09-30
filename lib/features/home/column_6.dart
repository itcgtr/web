import 'package:flutter/material.dart';

class _Column_6State extends State<Column_6> {
  // ########## BLOCK: Attributes // ##########

  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final wide = constraints.maxWidth >= 800;
        return Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 96),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '06 — CONTACT',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 1,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 4),
                const Text('Get in Touch', style: TextStyle(fontSize: 32)),
                const SizedBox(height: 48),
                wide
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: _Info()),
                          const SizedBox(width: 70),
                          Expanded(child: _Form()),
                        ],
                      )
                    : Column(
                        children: [_Info(), const SizedBox(height: 60), _Form()],
                      ),
              ],
            ),
          ),
        );
      },
    );
  }

  // ########## END BLOCK: Design // ##########

  // ########## BLOCK: Methods // ##########

  // ########## END BLOCK: Method // ##########
}

class Column_6 extends StatefulWidget {
  const Column_6({super.key});

  @override
  State<Column_6> createState() => _Column_6State();
}

class _Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      for (final item in [
        ('PLACEHOLDER', 'PLACEHOLDER'),
        ('PLACEHOLDER', 'PLACEHOLDER'),
        ('PLACEHOLDER', 'PLACEHOLDER'),
        ('PLACEHOLDER', 'PLACEHOLDER'),
      ])
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 18, top: 8),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black26)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.$1.toUpperCase(),
                style: const TextStyle(
                  fontSize: 9,
                  color: Colors.amber,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                item.$2,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
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
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('Send a Message', style: TextStyle(fontSize: 23)),
      const SizedBox(height: 22),
      _Field(label: 'PLACEHOLDER', hint: 'PLACEHOLDER'),
      _Field(label: 'PLACEHOLDER', hint: 'PLACEHOLDER'),
      _Field(label: 'PLACEHOLDER', hint: 'PLACEHOLDER'),
      _Field(label: 'PLACEHOLDER', hint: 'PLACEHOLDER', lines: 5),
      Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
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
  final String label, hint;
  final int lines;
  const _Field({required this.label, required this.hint, this.lines = 1});
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: const TextStyle(
            fontSize: 9,
            color: Colors.black45,
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
            hintStyle: const TextStyle(fontSize: 13, color: Colors.black45),
            filled: true,
            fillColor: Colors.teal.withOpacity(0.10),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 13,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.zero,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.zero,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ],
    ),
  );
}
