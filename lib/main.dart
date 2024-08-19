import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  final String nome = 'Nicolas';
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int idade = 17;

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
        body: GestureDetector(
          onTap: () {
            setState(() {
              idade = idade + 1;
            });
          },
          child: Center(
            child: Text(
              'Bem Vindo ${widget.nome}, $idade anos',
              style: const TextStyle(color: Color(0xFF2B3649), fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
