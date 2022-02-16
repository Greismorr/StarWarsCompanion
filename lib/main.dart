import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'star_wars_companion.dart';
import 'injection.dart';

void main() {
  configureDependencies();

  //Faz a barra de status do Android ficarem transparentes e os ícones com tema escuro.
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(StarWarsCompanion());
}
