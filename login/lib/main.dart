import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/routes.dart';
import 'core/themes/themes.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Titulo main',
      theme: myTheme,
      getPages: routers,
    ),
  );
}

