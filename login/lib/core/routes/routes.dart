import 'package:get/get.dart';
import 'package:login/views/cadastrar.dart';
import 'package:login/views/home.dart';
import 'package:login/views/login.dart';

final List<GetPage> routers = [
  GetPage(name: '/', page: () => Login(title: 'titulo login')),
  GetPage(name: '/cadastrar', page: () => Cadastrar()),
  GetPage(name: '/home', page: () => Home()),
];
