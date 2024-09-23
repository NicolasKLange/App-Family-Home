import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';
import 'package:family_home/assets/customHeader.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
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
                      Navigator.pushNamed(context, '/homeScreen');
                    },
                  ),
                  const SizedBox(
                    width: 40,
                    height: 80,
                  ),
                  const Text(
                    "Lista de Compras",
                    style: ButtonStyles.sectionTitleStyleSec,
                  ),
                ],
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(40),
                  childAspectRatio: 1,
                  children: [
                    _buildDashboardButton(
                        context, 'Mercado', Icons.abc, '/supermarketScreen'),
                    _buildDashboardButton(context, 'Farmácia',
                        Icons.local_pharmacy_rounded, '/pharmacyScreen'),
                    _buildDashboardButton(
                        context, 'Escola', Icons.school, '/schoolScreen'),
                    _buildDashboardButton(context, 'Roupas',
                        Icons.report_problem_outlined, '/clothesScreen'),
                    _buildDashboardButton(context, 'Diversos',
                        Icons.location_on_outlined, '/othersScreen'),
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
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEDE8E8),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: const Color(0xFF2B3649), width: 2),
        //COLOCANDO SOMBRA PARA PARECER FLUTURAR
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF2B3649).withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
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
