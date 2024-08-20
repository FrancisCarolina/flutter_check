import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Importa GetX para navegação

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'), // Título da AppBar
        actions: [
          TextButton(
            onPressed: () {
              // Ação para deslogar
              // Navega de volta para a página de login e limpa a pilha
              Get.offAllNamed('/'); // Remove todas as páginas da pilha e navega para a página de login
            },
            child: const Text(
              'Deslogar',
              style: TextStyle(
                color: Colors.white, // Cor do texto do botão
              ),
            ),
          ),
        ],
      ),
      body: Center( // Centraliza o Container vertical e horizontalmente
        child: Container(
          padding: const EdgeInsets.all(16.0), // Adiciona padding ao Container
          child: const Text(
            "Home",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
