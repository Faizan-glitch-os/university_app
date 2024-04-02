import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _incrementCounter = 0;
  int _decrementCounter = 0;

  void _incrementCounterFunction() {
    setState(() {
      _incrementCounter++;
    });
  }

  void _decrementCounterFunction() {
    setState(() {
      _decrementCounter--;
    });
  }

  void _reloadNumbers() {
    setState(() {
      _incrementCounter = 0;
      _decrementCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _incrementCounterFunction,
              child: const Text(
                'Press to Increment',
              ),
            ),
            Text(
              '$_incrementCounter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            ElevatedButton(
              onPressed: _decrementCounterFunction,
              child: const Text(
                'Press to Decrement',
              ),
            ),
            Text(
              '$_decrementCounter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _reloadNumbers,
        child: const Icon(Icons.autorenew),
      ),
    );
  }
}
