import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';
import 'package:family_home/assets/customHeader.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: CustomScreenHeader(
        imagePath: 'lib/assets/icons/logo.png',
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Perfil',
                style: ButtonStyles.sectionTitleStyle,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
