import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';
import 'package:family_home/assets/customHeader.dart';

class SupermarketScreen extends StatefulWidget {
  const SupermarketScreen({super.key});

  @override
  State<SupermarketScreen> createState() => _SupermarketScreenState();
}

class _SupermarketScreenState extends State<SupermarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF577096),
      body: SingleChildScrollView(
        child: CustomScreenHeader(
          imagePath: 'lib/assets/icons/logo.png',
          child: Column(
            children: [
              //ROW PARA COLOCAR O BOTAO DE VOLTAR
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: const Color(0xFF2B3649),
                    onPressed: () {
                      Navigator.pushNamed(context, '/shoppingScreen');
                    },
                  ),
                  const SizedBox(
                    width: 40,
                    height: 80,
                  ),
                  const Text(
                    "Mercado",
                    style: ButtonStyles.sectionTitleStyleSec,
                  ),
                ],
              ),
              // Conteúdo da tela de tarefas aqui...
            ],
          ),
        ),
      ),
    );
  }
}