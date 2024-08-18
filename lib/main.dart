import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          
          children: [
            Container(
              width: 100, 
              height: 100,
              color: Colors.red,
              ),
              Container(
              width: 100, 
              height: 100,
              color: Colors.deepPurple[600],
              ),
              Container(
              width: 100, 
              height: 100,
              color: Colors.blue[400],
              ),
              Container(
              width: 100, 
              height: 100,
              color: Colors.green[400],
              ),
              Container(
              width: 100, 
              height: 100,
              color: Colors.yellow[400],
              ),
          ],
          ),
      ),
      
    );
  }
}


