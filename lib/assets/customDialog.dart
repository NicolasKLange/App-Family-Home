import 'package:flutter/material.dart';

// Função para mostrar o diálogo de adicionar item com o estilo personalizado
void showCustomAddItemDialog({
  required BuildContext context,
  required TextEditingController itemController,
  required VoidCallback onAdd,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: const Color(0xFF577096), // Cor de fundo do diálogo
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Bordas arredondadas
        ),
        title: const Text(
          "Adicionar Item",
          style: TextStyle(
            color: Colors.white, // Cor do texto do título
          ),
        ),
        content: TextField(
          controller: itemController,
          style: const TextStyle(color: Colors.white), // Cor do texto digitado
          decoration: InputDecoration(
            hintText: "Digite o nome do item",
            hintStyle:
                const TextStyle(color: Colors.white70), // Cor do placeholder
            filled: true,
            fillColor:
                const Color(0xFF2B3649), // Cor de fundo do campo de texto
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2B3649), // Cor de fundo do botão
              foregroundColor: Colors.white, // Cor do texto do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: onAdd, // Função que será passada ao pressionar o botão
            child: const Text("Adicionar"),
          ),
        ],
      );
    },
  );
}
