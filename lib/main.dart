import 'package:flutter/material.dart';

//IMPORTANDO TELAS
import 'login/login.dart';

//IMPORTANDO STYLES DOS BOTÕES
import 'assets/button_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/loginScreen': (context) => const LoginScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/loginScreen');
          },
          //COLOCANDO O STYLE BUTTON
          style: ButtonStyles.primaryButton,
          child: const Text('Tela de Login'),
        ),
      ),
    );
  }
}
