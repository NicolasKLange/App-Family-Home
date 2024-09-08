import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';

//IMPORTANDO TELAS PARA NAVIGATIONBAR
import '../calendar/calendar.dart';
import '../profile/profile.dart';

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
        ],
      ),

      // NAVIGATIONBAR COM TEMA PERSONALIZADO
      bottomNavigationBar: NavigationBarTheme(
        // Customizando o tema da NavigationBar
        data: const NavigationBarThemeData(
          // Editando o tamanho e cor dos ícones da NavigationBar
          iconTheme: WidgetStatePropertyAll(
            IconThemeData(
              size: 30,
              color: Color(0xFFEDE8E8), // Cor dos ícones não selecionados
            ),
          ),
          // Indicador da aba selecionada
          indicatorColor: Color.fromARGB(99, 255, 255, 255),
          backgroundColor: Color(0xFF577096), // Cor de fundo da NavigationBar

          // Editando o estilo de texto dos rótulos da NavigationBar
          labelTextStyle: WidgetStatePropertyAll(
            TextStyle(
              fontSize: 15,
              color: Color(0xFFEDE8E8),
            ),
          ),
        ),

        // NavigationBar com as opções
        child: NavigationBar(
          // Atualiza a opção selecionada
          onDestinationSelected: (int index) {
            setState(() {
              _opcaoSelecionada = index;
            });
          },
          // Mostra qual opção está selecionada
          selectedIndex: _opcaoSelecionada,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.miscellaneous_services_rounded,
              ),
              selectedIcon: Icon(
                Icons.miscellaneous_services_rounded,
                color: Color(0xFF577096), // Cor do ícone selecionado
              ),
              label: "Funcionalidades",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.calendar_month_outlined,
              ),
              selectedIcon: Icon(
                Icons.calendar_month,
                color: Color(0xFF577096),
              ),
              label: "Calendário",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              selectedIcon: Icon(
                Icons.person_2,
                color: Color(0xFF577096), // Cor do ícone selecionado
              ),
              label: "Perfil",
            ),
          ],
        ),
      ),
    );
  }
}

class FuncionalidadesScreen extends StatelessWidget {
  const FuncionalidadesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
