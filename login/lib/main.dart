import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/helper/user_repository.dart';
import 'package:provider/provider.dart';
import 'core/routes/routes.dart';
import 'core/themes/themes.dart'; // Certifique-se de que o caminho está correto

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserRepository()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login',
        theme: myTheme,
        getPages: routers,
      ),
    ),
  );
}
