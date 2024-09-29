import 'package:flutter/material.dart';
import 'package:family_home/assets/buttonStyles.dart';
import 'package:family_home/assets/customHeader.dart';
import 'package:family_home/main.dart'; // Importe a tela de login

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                'Perfil',
                style: ButtonStyles.sectionTitleStyle,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: ElevatedButton(
                style: ButtonStyles.primaryButton,
                onPressed: () {
                  // Função de logout do app
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const MyApp(), // Navega para a tela de login
                    ),
                  );
                },
                child: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
