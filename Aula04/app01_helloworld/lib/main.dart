import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.green,
      ).copyWith(
        secondary: Colors.green,
      )),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu Perfil"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: const Center(
            child: Text(
              "Nome: Leticia Rodrigues Telefone: 13981159053 Formação: Cursando ADS Experiência: Estagiária em TI",
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
                decorationColor: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
