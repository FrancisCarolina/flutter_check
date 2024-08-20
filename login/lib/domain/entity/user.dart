// lib/models/user.dart

class User {
  final int id;
  final String name;
  final String login;
  final String password;

  User({
    required this.id,
    required this.name,
    required this.login,
    required this.password,
  });

  // Método para validar login e senha
  bool validateLogin(String login, String password) {
    return this.login == login && this.password == password;
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, login: $login)';
  }
}
