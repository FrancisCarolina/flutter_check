import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Importa GetX para navegação
import 'package:login/components/input_text_field.dart.dart'; // Importa o componente InputTextField

class Login extends StatefulWidget {
  final String title;
  const Login({super.key, required this.title});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Aqui você pode adicionar a lógica para login
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login realizado com sucesso')),
                    );
                    // Navegação para a página Home, por exemplo:
                    Get.offNamed('/home');
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56), // Largura completa e altura maior
                  padding: const EdgeInsets.symmetric(vertical: 16.0), // Padding interno do botão
                  textStyle: const TextStyle(fontSize: 18), // Tamanho da fonte
                ),
                child: const Text('Logar'),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/cadastrar'); // Navega para a página de cadastrar
                },
                child: const Text(
                  'Não tem uma conta? Cadastre-se',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
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
