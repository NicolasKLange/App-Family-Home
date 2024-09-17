import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'dart:async';

// IMPORTANDO TELAS
import './login/login.dart';
import './home/home.dart';
import './login/createFamily.dart';
import './services/tasks/tasks.dart';
import './services/shopping/shopping.dart';
import './services/events/events.dart';
import './services/notices/notices.dart';
import './services/location/location.dart';

void main() async {
  // INICIALIZA OPERAÇÕES ASSÍNCRONAS
  WidgetsFlutterBinding.ensureInitialized();

  // INICIALIZA FORMATAÇÃO DE DATA PARA O PORTUGUÊS
  await initializeDateFormatting('pt_BR', null);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MÚLTIPLAS LOCALIZAÇÕES, INTERNACIONALIZAÇÃO
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'), // LOCAL = BRASIL/PORTUGUÊS
      ],

      // ROTA PRINCIPAL QUANDO INICIALIZA O APP
      initialRoute: '/',
      routes: {
        // ROTAS DO APP
        '/': (context) => const SplashScreen(),
        '/loginScreen': (context) => const LoginScreen(),
        '/homeScreen': (context) => const DashboardScreen(),
        '/createFamilyScreen': (context) => const CreateFamilyScreen(),
        '/tasksScreen': (context) => const TasksScreen(),
        '/shoppingScreen': (context) => const ShoppingScreen(),
        '/eventsScreen': (context) => const EventsScreen(),
        '/noticesScreen': (context) => const NoticesScreen(),
        '/locationScreen': (context) => const LocationScreen(),
      },
    );
  }
}

// TELA DE CARREGAMENTO
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // INICIA TEMPORIZADOR DE 2 SEGUNDOS PARA ABRIR O APP
    Future.delayed(const Duration(seconds: 2), () {
      // APÓS OS 2 SEGUNDOS, REDIRECIONA PARA A TELA DE LOGIN
      Navigator.pushReplacementNamed(context, '/loginScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //COR DE FUNDO DO APP
      backgroundColor: Color(0xFFA8BEE0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ANIMAÇÃO DE CARREGAMENTO
            SpinKitCircle(
              // COR PRINCIPAL DO APP
              color: Color(0xFF577096),
              // TAMANHO DO CÍRCULO
              size: 100.0,
            ),
            SizedBox(height: 20),
            Text(
              'Carregando...',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF2B3649),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
