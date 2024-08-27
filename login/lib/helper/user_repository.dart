import 'package:flutter/foundation.dart'; // Necessário para ChangeNotifier
import 'package:login/domain/entity/user.dart';

class UserRepository extends ChangeNotifier {
  final List<User> _users = [];
  User? _currentUser; // Propriedade para o usuário atual

  void addUser(User user) {
    _users.add(user);
    notifyListeners(); // Notifica ouvintes
  }

  List<User> getUsers() {
    return _users;
  }

  User? get currentUser => _currentUser; // Getter para o usuário atual

  User? logar(String login, String senha) {
    final user = _users.firstWhere(
      (user) => user.validateLogin(login, senha),
      orElse: () => User(
          id: -1,
          name: '',
          login: '',
          password: ''), // Retorna um usuário "vazio" se não encontrar
    );
    if (user.id != -1) {
      _currentUser = user; // Define o usuário atual
      notifyListeners(); // Notifica ouvintes sobre o novo usuário
    }
    return user.id == -1 ? null : user;
  }

  void logout() {
    _currentUser = null; // Limpa o usuário atual
    notifyListeners(); // Notifica ouvintes sobre a mudança
  }
}
