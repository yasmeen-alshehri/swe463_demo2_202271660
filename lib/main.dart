import 'package:flutter/material.dart';                       // 1

void main() => runApp(const MyApp());                       // 3

class MyApp extends StatelessWidget {                       // 5
  const MyApp({super.key});                                 // 6

  @override                                                  // 8
  Widget build(BuildContext context) {                      // 9
    return const MaterialApp(                               // 10
      home: MyHomePage(title: 'Flutter Demo'),              // 11
    );                                                       // 12
  }                                                          // 13
}                                                            // 14

class MyHomePage extends StatefulWidget {                   // 16
  const MyHomePage({super.key, required this.title});       // 17

  final String title;                                       // 19

  @override                                                  // 21
  State<MyHomePage> createState() => _MyHomePageState();    // 22
}                                                            // 23

class _MyHomePageState extends State<MyHomePage> {          // 25
  int _counter = 0;                                         // 26
  String? message;                                          // 27

  void _incrementCounter() {                                // 29
    setState(() {                                           // 30
      _counter++;                                           // 31
      message = 'Button pressed';                           // 32
    });                                                      // 33
  }                                                          // 34

  @override                                                  // 36
  Widget build(BuildContext context) {                      // 37
    return Scaffold(                                        // 38
      appBar: AppBar(                                       // 39
        title: Text(widget.title),                          // 40
      ),                                                     // 41
      body: Center(                                         // 42
        child: Column(                                      // 43
          mainAxisAlignment: MainAxisAlignment.center,      // 44
          children: <Widget>[                               // 45
            Text('Count: $_counter'),                       // 46
            Text(message ?? 'Press the button'),            // 47
          ],                                                 // 48
        ),                                                   // 49
      ),                                                     // 50
      floatingActionButton: FloatingActionButton(           // 51
        onPressed: _incrementCounter,                       // 52
        child: const Icon(Icons.add),                       // 53
      ),                                                     // 54
    );                                                       // 55
  }                                                          // 56
}                                                            // 57
