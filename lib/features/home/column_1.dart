import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';

import 'package:web/core/app_color.dart';

class _Column_1State extends State<Column_1> {
  // ########## BLOCK: Attributes // ##########

  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########

  Widget _layout(List<Widget> lws) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Stack(
        children: [
          Positioned.fill(
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter, //
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.white, Colors.transparent],
                  stops: [0.0, 0.15, 0.40],
                ).createShader(rect);
              },
              blendMode: BlendMode.dstIn,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: Image.asset('asset/campus.png', fit: BoxFit.cover),
              ),
            ),
          ),

          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter, //
                  end: Alignment.bottomCenter,
                  colors: [app_color.bg.withValues(alpha: 0.0), app_color.bg.withValues(alpha: 0.45), app_color.bg],
                  stops: const [0.0, 0.45, 1.0],
                ),
              ),
            ),
          ),

          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.transparent,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: lws,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _layout([
      SizedBox(width: 20),
      Expanded(flex: 1, child: Container()),
      Expanded(
        flex: 4,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'EST. 2019',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: app_color.gold, fontFamily: 'Nakora'),
              ),
              SizedBox(height: 20),
              Text(
                'Department of',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: app_color.text, fontFamily: 'Nakora'),
              ),
              Text(
                'Telecommunication',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: app_color.gold, fontFamily: 'Nakora'),
                textAlign: TextAlign.start,
              ),
              Text(
                '& Networking',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: app_color.gold, fontFamily: 'Nakora'),
                textAlign: TextAlign.start,
              ),
              Text(
                'Engineering',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 70, color: app_color.text, fontWeight: FontWeight.bold, fontFamily: 'Nakora'),
              ),
              SizedBox(height: 20),
              Text(
                'Advancing the theory and practice of telecommunications and networking engineering through rigorous research, open innovation, and collaboration with industry and society.',
                style: TextStyle(fontSize: 20, color: app_color.text, fontFamily: 'Nakora'),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(fixedSize: const Size(190, 44), shape: const RoundedRectangleBorder(), backgroundColor: app_color.gold, foregroundColor: app_color.white),
                    child: Text('Explore Programs'),
                  ),
                  SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(190, 44),
                      shape: const RoundedRectangleBorder(),
                      backgroundColor: app_color.bg,
                      foregroundColor: app_color.goldDark,
                      side: BorderSide(color: app_color.gold.withValues(alpha: 0.6)),
                    ),
                    child: Text('Research Areas'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Expanded(
        flex: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: app_color.card,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: app_color.gold.withValues(alpha: 0.35)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '300+',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: app_color.gold, fontFamily: 'Nakora'),
                          ),
                          Text('Students Enrolled'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '20+',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: app_color.gold, fontFamily: 'Nakora'),
                          ),
                          Text('Faculty Members'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Expanded(flex: 1, child: Container()),
    ]);
  }

  // ########## END BLOCK: Design // ##########

  // ########## BLOCK: Methods // ##########

  // ########## END BLOCK: Method // ##########
}

class Column_1 extends StatefulWidget {
  const Column_1({super.key});

  @override
  State<Column_1> createState() => _Column_1State();
}

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const Column_1(),
    ),
  );
}
