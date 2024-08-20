import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool cbIsSelected_1 = false;
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
                // Ação a ser executada quando o botão for pressionado
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Botão pressionado')),
                );
              },
              child: const Text('Logar'),
            ),
            const SizedBox(height: 10), // Espaço entre o ElevatedButton e o TextButton
            TextButton(
              onPressed: () {
                // Ação a ser executada quando o link for pressionado
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Link clicado')),
                );
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
