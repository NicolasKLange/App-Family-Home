import 'package:flutter/material.dart';
import 'package:family_home/assets/buttonStyles.dart';

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
        backgroundColor: const Color(0xFFA8BEE0), // Cor de fundo do diálogo
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Bordas arredondadas
          side: const BorderSide(
              color: Color(0xFF2B3649), width: 3), // Borda ao redor do diálogo
        ),
        elevation: 30, // Adiciona elevação ao diálogo (efeito de sombra)
        title: const Center(
          child: Text(
            "Adicionar Produto",
            style: TextStyle(
              color: Color(0xFF2B3649), // Cor do texto do título
            ),
          ),
        ),
        content: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                    const Color(0xFF2B3649).withOpacity(0.2), // Cor da sombra
                spreadRadius: 2, // Raio de expansão da sombra
                blurRadius: 5, // Desfoque da sombra
                offset: const Offset(2, 4), // Posição da sombra
              ),
            ],
          ),
          child: TextField(
            controller: itemController,
            style: const TextStyle(
              color: Color(0xFF2B3649),
            ), // Cor do texto digitado
            decoration: ButtonStyles.textFieldDecoration.copyWith(
              hintText: "Produto", // Placeholder específico deste campo
            ),
          ),
        ),
        actions: [
          Center(
            child: ElevatedButton(
              style: ButtonStyles.primaryButton.copyWith(),
              onPressed: onAdd, // Função que será passada ao pressionar o botão
              child: const Text("Adicionar"),
            ),
          ),
        ],
      );
    },
  );
}
