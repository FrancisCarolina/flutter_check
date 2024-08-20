
import 'package:login/domain/entity/user.dart';

class UserRepository {
  final List<User> _users = [];

  // Adiciona um novo usuário
  void addUser(User user) {
    _users.add(user);
  }

  // Obtém todos os usuários
  List<User> getUsers() {
    return _users;
  }

  // Verifica se o login e a senha estão corretos e retorna o usuário ou null
  User? logar(String login, String senha) {
    return _users.firstWhere(
      (user) => user.validateLogin(login, senha),
      orElse: () => User(id: -1, name: '', login: '', password: ''), // Retorna um usuário "vazio" se não encontrar
    ).id == -1 ? null : _users.firstWhere(
      (user) => user.validateLogin(login, senha),
    );
  }

  // Obtém um usuário pelo login ou retorna null
  User? getUserById(String login) {
    return _users.firstWhere(
      (user) => user.login == login,
      orElse: () => User(id: -1, name: '', login: '', password: ''), // Retorna um usuário "vazio" se não encontrar
    ).id == -1 ? null : _users.firstWhere(
      (user) => user.login == login,
    );
  }
}
