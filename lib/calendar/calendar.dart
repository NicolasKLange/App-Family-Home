import 'package:flutter/material.dart';
import 'package:family_home/assets/buttonStyles.dart';

import 'package:family_home/assets/customHeader.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

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
                'Calendário',
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
