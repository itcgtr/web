import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      debugShowCheckedModeBanner: false,
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
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            //
            column_faculty(),
          ],
        ),
      ),
    );
  }
}

Widget column_faculty() {
  return LayoutBuilder(
    builder: (context, constraints) {
      const faculty = <(String, String, String, String, String)>[];
      final wide = constraints.maxWidth >= 1000;
      final count = wide ? 6 : (constraints.maxWidth >= 600 ? 3 : 2);
      return Container(
        color: Colors.teal.withOpacity(0.50),
        padding: const EdgeInsets.symmetric(vertical: 96),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '04 — FACULTY',
                style: TextStyle(
                  fontSize: 10,
                  letterSpacing: 1,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(height: 4),
              const Text('Our Faculty', style: TextStyle(fontSize: 32)),
              const SizedBox(height: 48),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: faculty.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: count,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: .62,
                ),
                itemBuilder: (_, i) => _FacultyCard(data: faculty[i]),
              ),
              const SizedBox(height: 28),
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  child: const Text('VIEW ALL →'),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class _FacultyCard extends StatelessWidget {
  final (String, String, String, String, String) data;
  const _FacultyCard({required this.data});
  @override
  Widget build(BuildContext context) => Container(
    color: Colors.transparent,
    padding: const EdgeInsets.only(bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            color: Colors.black12,
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
          padding: const EdgeInsets.fromLTRB(14, 12, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.$1, style: const TextStyle(fontSize: 14)),
              const SizedBox(height: 4),
              Text(
                data.$2,
                style: const TextStyle(fontSize: 8, color: Colors.black45),
              ),
              const SizedBox(height: 3),
              Text(
                data.$3,
                style: const TextStyle(fontSize: 8, color: Colors.amber),
              ),
              const SizedBox(height: 6),
              Text(
                'h-index: ${data.$5}',
                style: const TextStyle(fontSize: 8, color: Colors.black26),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
