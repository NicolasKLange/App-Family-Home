import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';

import 'package:family_home/assets/customHeader.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

class Tasks extends StatelessWidget {
  
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Family Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      home: const TasksScreen(),
    );
  }
}

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // VARIÁVEL PARA COLOCAR O DIA DE HOJE
  final data =
      DateFormat("d 'de' MMMM 'de' yyyy", 'pt_BR').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF577096),
      body: SingleChildScrollView(
        child: CustomScreenHeader(
          imagePath: 'lib/assets/icons/logo.png',
          child: Column(
            children: [
              // ROW PARA COLOCAR O BOTÃO DE VOLTAR
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
                    width: 25,
                    height: 80,
                  ),
                  Text(
                    data,
                    style: ButtonStyles.sectionTitleStyleSec,
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "Tarefas",
                    style: ButtonStyles.sectionTitleStyleSec,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
