import 'package:flutter/material.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            //
            column_1(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter, tooltip: 'Increment', child: const Icon(Icons.add)),
    );
  }
}

Widget column_1() {
  return Container(
    width: 100, //
    height: 100,
    color: Colors.red,
  );
}
