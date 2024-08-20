import 'package:get/get.dart';
import 'package:login/views/home.dart';

// Defina suas rotas usando GetPage
final List<GetPage> routers = [
  GetPage(name: '/', page: () => MyHomePage(title: 'titulo my home page',)),
];
