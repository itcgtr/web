import 'dart:math';

import 'package:flutter/material.dart';

class _MyHomePageState extends State<MyHomePage> {
  // ########## BLOCK: Attributes // ##########
  bool is_mobile = false;
  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
    is_mobile = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Hello World"), //
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (!is_mobile)
                  Container(
                    width: 300, //
                    color: Colors.red,
                  ),
                Expanded(
                  child: Container(
                    width: 100, //
                    // color: Colors.yellow,
                    alignment: .topCenter,
                    child: Column(
                      children: [
                        Wrap(
                          alignment: .center,
                          spacing: 4,
                          runSpacing: 4,
                          children: [
                            Container(
                              width: 300, //
                              height: 50,
                              color: Colors.blueAccent,
                            ),
                            Container(
                              width: 300, //
                              height: 50,
                              color: Colors.red,
                            ),
                          ],
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i < 10; i++)
                                Container(
                                  width: 100, //
                                  height: 100,
                                  color: _randomColor,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 40, //
            color: Colors.purple,
          ),
        ],
      ),

      drawer: is_mobile ? Container(width: 300, color: Colors.red) : null,
    );
  }

  // ########## END BLOCK: Design // ##########

  // ########## BLOCK: Methods // ##########
  Color get _randomColor => Color.fromARGB(
    255,
    Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
  );

  @override
  void initState() {
    super.initState();
  }

  // ########## END BLOCK: Method // ##########
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
