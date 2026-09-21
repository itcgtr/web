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
}

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
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
                child: Image.asset('asset/campus.png', fit: BoxFit.cover),
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
                children: [column_1()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget column_1() {
  return Container(
    color: Colors.transparent,
    child: IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
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
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gold,
                      fontFamily: 'Nakora',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Department of',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: AppColors.text,
                      fontFamily: 'Nakora',
                    ),
                  ),
                  Text(
                    'Telecommunication',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 70,
                      color: AppColors.gold,
                      fontFamily: 'Nakora',
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '& Networking',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 70,
                      color: AppColors.gold,
                      fontFamily: 'Nakora',
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Engineering',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 70,
                      color: AppColors.text,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nakora',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Advancing the theory and practice of telecommunications and networking engineering through rigorous research, open innovation, and collaboration with industry and society.',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.text,
                      fontFamily: 'Nakora',
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          fixedSize: const Size(190, 44),
                          shape: const RoundedRectangleBorder(),
                          backgroundColor: AppColors.gold,
                          foregroundColor: AppColors.white,
                        ),
                        child: Text('Explore Programs'),
                      ),
                      SizedBox(width: 20),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          fixedSize: const Size(190, 44),
                          shape: const RoundedRectangleBorder(),
                          backgroundColor: AppColors.bg,
                          foregroundColor: AppColors.goldDark,
                          side: BorderSide(
                            color: AppColors.gold.withValues(alpha: 0.6),
                          ),
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
                    color: AppColors.card,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.gold.withValues(alpha: 0.35),
                    ),
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
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: AppColors.gold,
                                  fontFamily: 'Nakora',
                                ),
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
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: AppColors.gold,
                                  fontFamily: 'Nakora',
                                ),
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
        ],
      ),
    ),
  );
}
