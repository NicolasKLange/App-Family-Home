import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';

/// Dashboard screen class
class DashboardScreen extends StatelessWidget {
  /// Constructor for DashboardScreen
  const DashboardScreen({super.key});

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
                        //ESTILIZANDO OS CARDS DAS FUNCIONALIDADES
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 14,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(20),
                        childAspectRatio: 1,
                        //CARDS DAS FUNCIONAILIDADES DO APP
                        children: [
                          ///MUDAR ROTAS
                          _buildDashboardButton(
                              context, 'Tarefas', Icons.list, '/tasksScreen'),

                          ///MUDAR ROTAS
                          _buildDashboardButton(context, 'Compras',
                              Icons.shopping_cart_outlined, '/shoppingScreen'),

                          ///MUDAR ROTAS
                          _buildDashboardButton(
                              context, 'Eventos', Icons.event, '/eventsScreen'),

                          ///MUDAR ROTAS
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
        ),
      ),

      //NAVIGATIONBAR DA TELA
      bottomNavigationBar: NavigationBarTheme(
        //CUSTOMIZAR O TEMA DA NAVIGATIONBAR
        data: const NavigationBarThemeData(
          //EDITANDO ICONS NAVIGATIONBAR
          iconTheme: WidgetStatePropertyAll(
            IconThemeData(
              size: 30,
              color: Color(0xFFEDE8E8),
            ),
          ),
          //INDICADOR DE SELECIONADO
          indicatorColor: Color.fromARGB(99, 255, 255, 255),
          backgroundColor: Color(0xFF577096),
          //EDITANDO TEXTO NAVIGATIONBAR
          labelTextStyle: WidgetStatePropertyAll(
            TextStyle(
              fontSize: 15,
              color: Color(0xFFEDE8E8),
            ),
          ),
        ),
        child: NavigationBar(
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.miscellaneous_services_rounded,
                ),
                // MUDA O ICON OU COR QUANDO ESTIVER SELECIONADO
                selectedIcon: Icon(
                  Icons.miscellaneous_services_rounded,
                  color: Color(0xFF577096),
                ),
                label: "Funcionalidades"),
            NavigationDestination(
                icon: Icon(
                  Icons.calendar_month_outlined,
                ),
                selectedIcon: Icon(
                  Icons.calendar_month,
                  color: Color(0xFF577096),
                ),
                label: "Calendário"),
            NavigationDestination(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                selectedIcon: Icon(
                  Icons.person_2,
                  color: Color(0xFF577096),
                ),
                label: "Perfil"),
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
