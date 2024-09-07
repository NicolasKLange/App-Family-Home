import 'package:flutter/material.dart';
import '../../assets/button_styles.dart';

// CLASSE DA TELA DE LOGIN
class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TOPO TELA
      backgroundColor: const Color(0xFF577096),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                child: Image.asset(
                  'lib/assets/icons/logo.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              //BORDA ARREDONDADA
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: const BoxDecoration(
                  //COR FUNDO PARTE INFERIOR
                  color: Color(0xFFA8BEE0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //ROW PARA COLOCAR O BOTAO DE VOLTAR
                      //ROW PARA COLOCAR O BOTAO DE VOLTAR
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: const Color(0xFF2B3649),
                            onPressed: () {
                              Navigator.pop(
                                  context); // Voltar para a página anterior
                            },
                          ),
                          const SizedBox(
                            width: 90,
                          ),
                          const Text(
                            "EVENTOS",
                            style: ButtonStyles.sectionTitleStyleSec,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
