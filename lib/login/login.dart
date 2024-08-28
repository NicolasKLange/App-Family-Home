import 'package:flutter/material.dart';
import 'package:family_home/assets/button_styles.dart';

//CLASSE DA TELA DE LOGIN
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //VISIBILIDADE DA SENHA
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //COR TOPO DA TELA
      backgroundColor: const Color(0xFF577096),
      //SAFEAREA E SINGLECHILDSCROLLVIEW: GARANTE QUE O CONTEÚDO DA TELA SEJA ROLÁVEL E NÃO SUBA QUANDO O TECLADO APARECER
      body: SafeArea(
        child: SingleChildScrollView(
          //COLUMN: AJUSTA OS WIDGETS PARA DEIXAR-LOS DE FORMA LINEAR, SENDO MELHOR PARA QUANDO O CONTEÚDO POSSA SER ROLADO
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 10),
                child: Image.asset(
                  'lib/assets/icons/logo.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              //BORDA ARREDONDADA
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: const BoxDecoration(
                  //COR FUNDO PARTE INFERIOR
                  color: Color(0xFFA8BEE0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(400, 200),
                    topRight: Radius.elliptical(150, 10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    //ALINHAR AO CENTRO
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Bem vindo!',
                        style:
                            TextStyle(fontSize: 24, color: Color(0xFF2B3649)),
                      ),
                      const SizedBox(height: 20),

                      //CAMPO DE TEXTO INSERIR NOME
                      TextField(
                        decoration: ButtonStyles.textFieldDecoration.copyWith(
                          labelText: 'Your name',
                          prefixIcon: const Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(height: 16),

                      //CAMPO DE TEXTO INSERIR NOME CODIGO FAMÍLIA
                      TextField(
                        decoration: ButtonStyles.textFieldDecoration.copyWith(
                          labelText: 'Family Code',
                          prefixIcon: const Icon(Icons.qr_code_2),
                        ),
                      ),
                      const SizedBox(height: 16),

                      //CAMPO DE TEXTO INSERIR SENHA
                      TextField(
                        obscureText: _isObscured,
                        decoration: ButtonStyles.textFieldDecoration.copyWith(
                          labelText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
                          //VISUALIZAR SENHA
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscured
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}