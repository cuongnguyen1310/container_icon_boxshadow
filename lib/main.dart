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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter demo container, icon, boxshadow"),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.red,
              boxShadow: [BoxShadow(color: Colors.red, blurRadius: 25)]),
          width: 500,
          height: 300,
          child: const Icon(
            Icons.star,
            color: Colors.yellow,
            size: 200,
          ),
        ),
      ),
    );
  }
}
