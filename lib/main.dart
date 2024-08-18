import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFA8BEE0),
        appBar: AppBar(
          backgroundColor: const Color(0xFF577096),
          title: const Text(
            'Family Home',
            style: TextStyle(
              color: Color(0xFFA8BEE0),
            ),
          ),
        ),
        body: const Center(
          child: Text(
            'Bem Vindo',
            style: TextStyle(color: Color(0xFF2B3649), fontSize: 30),
          ),
        ),
      ),
    );
  }
}
