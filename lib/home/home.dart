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
                          _buildDashboardButton(context, 'Tarefas',
                              Icons.task_alt, '/tasksScreen'),

                          ///MUDAR ROTAS
                          _buildDashboardButton(context, 'Compras',
                              Icons.shopping_bag, '/shoppingScreen'),

                          ///MUDAR ROTAS
                          _buildDashboardButton(
                              context, 'Eventos', Icons.event, '/eventsScreen'),

                          ///MUDAR ROTAS
                          _buildDashboardButton(context, 'Futuros',
                              Icons.sim_card_alert, '/futureScreen'),
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
