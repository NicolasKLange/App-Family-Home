import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';
import 'package:family_home/assets/customNavigationBar.dart';
import 'package:family_home/assets/customHeader.dart';

class NoticesScreen extends StatefulWidget {
  const NoticesScreen({super.key});

  @override
  State<NoticesScreen> createState() => _NoticesScreenState();
}

class _NoticesScreenState extends State<NoticesScreen> {
  int _selectedIndex = 0;

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
                      Navigator.pushNamed(context,
                          '/homeScreen'); // Voltar para a página anterior
                    },
                  ),
                  const SizedBox(
                    width: 90,
                    height: 80,
                  ),
                  const Text(
                    "Avisos",
                    style: ButtonStyles.sectionTitleStyleSec,
                  ),
                ],
              ),
              // Conteúdo da tela de tarefas aqui...
            ],
          ),
        ),
      ),
      // Adicionando a CustomBottomNavigationBar
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(
            () {
              _selectedIndex = index;
              // Atualize a navegação aqui se necessário
            },
          );
        },
      ),
    );
  }
}
