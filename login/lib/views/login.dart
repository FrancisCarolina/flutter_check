import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
//teste
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: <Widget>[
          const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent
                  ),
                ),
            const SizedBox(height: 20), // Espaço entre o Text e o botão
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/home');
              },
              child: const Text('Logar'),
            ),
            const SizedBox(height: 10), // Espaço entre o ElevatedButton e o TextButton
            TextButton(
              onPressed: () {
                Get.toNamed('/cadastrar');
              },
              child: const Text(
                'Ainda não tem uma conta? Cadastre-se',
                style: TextStyle(
                  color: Colors.blue, // Cor do texto para parecer um link
                  decoration: TextDecoration.underline, // Sublinha o texto
                ),
              ),
            ),
        ],),
      ),
    );
  }
}
