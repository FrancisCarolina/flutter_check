import 'package:flutter/material.dart';
import 'package:login/components/input_text_field.dart'; // Importa o componente InputTextField

class Cadastrar extends StatefulWidget {
  const Cadastrar({super.key});

  @override
  State<Cadastrar> createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Voltar para a tela anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InputTextField(
                textEditingController: _nameController,
                label: 'Nome',
                onValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu nome';
                  }
                  return null;
                },
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              InputTextField(
                textEditingController: _loginController,
                label: 'Login',
                onValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu login';
                  }
                  return null;
                },
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              InputTextField(
                textEditingController: _passwordController,
                label: 'Senha',
                hint: 'Digite sua senha',
                onValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira sua senha';
                  }
                  return null;
                },
                icon: Icons.lock,
                obscureText: true, // Torna o texto da senha oculto
              ),
              const SizedBox(height: 16),
              InputTextField(
                textEditingController: _confirmPasswordController,
                label: 'Confirmação de Senha',
                hint: 'Confirme sua senha',
                onValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, confirme sua senha';
                  }
                  if (value != _passwordController.text) {
                    return 'As senhas não coincidem';
                  }
                  return null;
                },
                icon: Icons.lock,
                obscureText: true, // Torna o texto da senha oculto
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Aqui você pode adicionar a lógica para salvar os dados
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Cadastro realizado com sucesso')),
                    );
                    // Navegação para a página de login, por exemplo:
                    Navigator.of(context).pop(); // Voltar para a tela anterior
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56), // Largura completa e altura maior
                  padding: const EdgeInsets.symmetric(vertical: 16.0), // Padding interno do botão
                  textStyle: const TextStyle(fontSize: 18), // Tamanho da fonte
                ),
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
