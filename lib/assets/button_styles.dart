import 'package:flutter/material.dart';

class ButtonStyles {
  // Estilo para botões primários
  static final ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF577096),
    foregroundColor: const Color(0xFFA8BEE0),
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );

  // Estilo para botões secundários
  static final ButtonStyle secondaryButton = OutlinedButton.styleFrom(
    backgroundColor: const Color(0xFFA8BEE0),
    foregroundColor: const Color(0xFF2B3649),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    side: const BorderSide(color: Color(0xFF577096), width: 2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

  // Estilo para botões de texto
  static final ButtonStyle textButton = TextButton.styleFrom(
    backgroundColor: const Color(0xFF577096),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    textStyle: const TextStyle(fontSize: 16),
  );

  // Estilo para TextField
  static final InputDecoration textFieldDecoration = InputDecoration(
    filled: true,
    fillColor: const Color(0xFFEDE8E8),
    labelStyle: const TextStyle(color: Color(0xFF2B3649)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFFEDE8E8)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFFEDE8E8)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFF577096)),
    ),
    prefixIconColor: const Color(0xFF577096),
  );

  // Estilo principal texto, para nome da tela
  static const TextStyle sectionTitleStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Color(0xFF2B3649),
  );
}
