import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';
import 'package:family_home/assets/customHeader.dart';

class OthersScreen extends StatefulWidget {
  const OthersScreen({super.key});

  @override
  State<OthersScreen> createState() => _OthersScreenState();
}

class _OthersScreenState extends State<OthersScreen> {
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
                    "Diversos",
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
