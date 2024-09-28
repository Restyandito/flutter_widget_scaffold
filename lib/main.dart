import 'dart:developer';
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
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
            'Hello World!',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => log('Hello World!'),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
