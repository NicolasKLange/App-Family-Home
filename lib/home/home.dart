import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';
import 'package:family_home/assets/customNavigationBar.dart'; // Custom BottomNavigationBar
import 'package:family_home/assets/customHeader.dart';

// Importando as telas
import '../calendar/calendar.dart';
import '../profile/profile.dart';
import '../services/tasks/tasks.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF577096),

      body: IndexedStack(
        index: _opcaoSelecionada,
        children: const <Widget>[
          FuncionalidadesScreen(),
          CalendarScreen(),
          ProfileScreen(),
          TasksScreen(),
        ],
      ),

      // Usando a CustomBottomNavigationBar
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _opcaoSelecionada,
        onDestinationSelected: (int index) {
          setState(() {
            _opcaoSelecionada = index;
          });
        },
      ),
    );
  }
}

class FuncionalidadesScreen extends StatelessWidget {
  const FuncionalidadesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomScreenHeader(
        imagePath: 'lib/assets/icons/logo.png',
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Funcionalidades',
                style: ButtonStyles.sectionTitleStyle,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 14,
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                childAspectRatio: 1,
                children: [
                  _buildDashboardButton(
                      context, 'Tarefas', Icons.list, '/tasksScreen'),
                  _buildDashboardButton(context, 'Compras',
                      Icons.shopping_cart_outlined, '/shoppingScreen'),
                  _buildDashboardButton(
                      context, 'Eventos', Icons.event, '/eventsScreen'),
                  _buildDashboardButton(context, 'Avisos',
                      Icons.report_problem_outlined, '/noticesScreen'),
                  _buildDashboardButton(context, 'Localização',
                      Icons.location_on_outlined, '/locationScreen'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardButton(
      BuildContext context, String title, IconData icon, String route) {
    return Card(
      color: const Color(0xFFD7D6D4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: Color(0xFF2B3649), width: 2),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: const Color(0xFF2B3649),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
