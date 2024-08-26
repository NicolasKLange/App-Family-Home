import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true; // Para controlar a visibilidade da senha

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF577096), // Cor do topo da tela
      body: Stack(
        children: [
          // Parte inferior com borda arredondada
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height *
                  0.7, // Altura da parte arredondada
              decoration: const BoxDecoration(
                color: Color(0xFFA8BEE0), // Cor de fundo da parte inferior
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(400, 200),
                  topRight: Radius.elliptical(150, 10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Texto de boas-vindas
                    const Text(
                      'Bem vindo!',
                      style: TextStyle(fontSize: 24, color: Color(0xFF2B3649)),
                    ),
                    const SizedBox(height: 20),

                    // Campo de texto para Nome
                    TextField(
                      decoration: ButtonStyles.textFieldDecoration.copyWith(
                        labelText: 'Your name',
                        prefixIcon: const Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Campo de texto para Código da Família
                    TextField(
                      decoration: ButtonStyles.textFieldDecoration.copyWith(
                        labelText: 'Family Code',
                        prefixIcon: const Icon(Icons.qr_code_2),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Campo de texto para Senha
                    TextField(
                      obscureText: _isObscured,
                      decoration: ButtonStyles.textFieldDecoration.copyWith(
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),

          // Logo no centro da tela
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 10),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Imagem da logo
                  Image.asset(
                    'lib/assets/icons/logo.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
