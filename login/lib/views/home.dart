import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/helper/user_repository.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final userRepository = Provider.of<UserRepository>(context);
    final currentUser = userRepository.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'), // Título da AppBar
        actions: [
          TextButton(
            onPressed: () {
              userRepository.logout(); // Faz o logout
              Get.offAllNamed(
                  '/'); // Remove todas as páginas da pilha e navega para a página de login
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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: currentUser?.name != null && currentUser!.name.isNotEmpty
              ? Text(
                  "Bem-vindo, ${currentUser.name}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Container(), // Retorna um Container vazio se o nome não estiver disponível
        ),
      ),
    );
  }
}
