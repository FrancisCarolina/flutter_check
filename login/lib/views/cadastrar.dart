import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Importa GetX para navegação

class Cadastrar extends StatefulWidget {
  const Cadastrar({super.key});

  @override
  State<Cadastrar> createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar'), // Título da AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Ícone de seta para voltar
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center( // Centraliza o Container vertical e horizontalmente
        child: Container(
          padding: const EdgeInsets.all(16.0), // Adiciona padding ao Container
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
            crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
            children: <Widget>[
              const Text(
                "Cadastrar",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20), // Espaço entre o texto e o botão
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6, // Define a largura como 60% da tela
                child: ElevatedButton(
                  onPressed: () {
                    // Ação do botão de salvar
                    // Adicione a lógica para salvar os dados aqui
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Dados salvos com sucesso')),
                    );
                  },
                  child: const Text('Salvar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
