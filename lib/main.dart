import 'package:flutter/material.dart';

import 'pages/calculadora_page.dart';
import 'pages/lojinha_page.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:
          LojinhaPage(), // se quiser usar a calculadora, só digitar CalculadoraPage() aqui, não esquece de importar
    );
  }
}
