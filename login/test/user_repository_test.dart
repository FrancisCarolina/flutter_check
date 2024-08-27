// test/user_repository_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:login/domain/entity/user.dart';

import 'user_repository_mock.mocks.mocks.dart';

void main() {
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
  });

  group('UserRepository Tests', () {
    test('should add a user', () {
      final user = User(
        id: 1,
        name: 'John Doe',
        login: 'johndoe',
        password: 'password',
      );

      when(mockUserRepository.getUsers()).thenReturn([user]);

      mockUserRepository.addUser(user);

      expect(mockUserRepository.getUsers().length, 1);
      expect(mockUserRepository.getUsers().first.name, 'John Doe');
    });

    test('should log in a user', () {
      final user = User(
        id: 1,
        name: 'John Doe',
        login: 'johndoe',
        password: 'password',
      );

      when(mockUserRepository.logar('johndoe', 'password')).thenReturn(user);

      final loggedInUser = mockUserRepository.logar('johndoe', 'password');

      expect(loggedInUser, isNotNull);
      expect(loggedInUser?.login, 'johndoe');
    });

    test('should fail to log in with wrong credentials', () {
      when(mockUserRepository.logar('johndoe', 'wrongpassword'))
          .thenReturn(null);

      final loggedInUser = mockUserRepository.logar('johndoe', 'wrongpassword');

      expect(loggedInUser, isNull);
    });
  });
}
