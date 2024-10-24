import 'package:flutter/material.dart';
import 'package:family_home/assets/buttonStyles.dart';
import 'package:family_home/assets/customHeader.dart';
import 'package:family_home/assets/customDialog.dart';

class SupermarketScreen extends StatefulWidget {
  const SupermarketScreen({super.key});

  @override
  State<SupermarketScreen> createState() => _SupermarketScreenState();
}

class _SupermarketScreenState extends State<SupermarketScreen> {
  List<Map<String, dynamic>> _shoppingList = [];

  // Função para adicionar novo item
  void _addItem(String newItem) {
    setState(() {
      _shoppingList.add({'item': newItem, 'checked': false});
    });
  }

  // Mostra um diálogo para adicionar um novo item com estilo personalizado
  void _showAddItemDialog() {
    TextEditingController itemController = TextEditingController();

    showCustomAddItemDialog(
      context: context,
      itemController: itemController,
      onAdd: () {
        if (itemController.text.isNotEmpty) {
          _addItem(itemController.text);
        }
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF577096),
      body: SingleChildScrollView(
        child: CustomScreenHeader(
          imagePath: 'lib/assets/icons/logo.png',
          child: Column(
            children: [
              //ROW PARA COLOCAR O BOTÃO DE VOLTAR E O TÍTULO
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: const Color(0xFF2B3649),
                    onPressed: () {
                      Navigator.pushNamed(context, '/shoppingScreen');
                    },
                  ),
                  const SizedBox(
                    width: 80,
                    height: 90,
                  ),
                  const Text(
                    "Mercado",
                    style: ButtonStyles.sectionTitleStyleSec,
                  ),
                ],
              ),
              // LISTA DE COMPRAS
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFEDE8E8).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFF2B3649),
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Lista",
                          style: ButtonStyles.sectionTitleStyleSec,
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.add),
                          color: const Color(0xFF2B3649),
                          onPressed: _showAddItemDialog,
                          // Chama o diálogo para adicionar item
                        ),
                      ],
                    ),
                    // EXIBINDO LISTA DE CHECKBOXES
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _shoppingList.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          value: _shoppingList[index]['checked'],
                          onChanged: (bool? newValue) {
                            setState(() {
                              _shoppingList[index]['checked'] = newValue!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: const Color(0xFF577096),
                          checkColor: const Color(0xFFEDE8E8),
                          title: Text(
                            _shoppingList[index]['item'],
                            style: TextStyle(
                              color: _shoppingList[index]['checked']
                                  ? const Color(0xFF577096)
                                  : const Color(0xFF577096),
                              decoration: _shoppingList[index]['checked']
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          ),
                        );
                      },
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
}
