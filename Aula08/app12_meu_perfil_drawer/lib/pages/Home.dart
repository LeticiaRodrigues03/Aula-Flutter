import 'package:flutter/material.dart';
import 'package:app_12/pages/Experiencia.dart';
import 'package:app_12/pages/Formacao.dart';
import 'package:app_12/pages/Pessoal.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final telas = [
    Center(child: Text('Página principal')),
    Pessoal(),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Letícia Rodrigues'),
              accountEmail: Text('leticia_rodriguesdesousa@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/eu.jpg'),
              ),
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Home'),
              subtitle: Text('Tela inicial do App'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Pessoal'),
              subtitle: Text('Informeções pessoais'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Formação'),
              subtitle: Text('Minhas formações'),
              trailing: Icon(Icons.contact_mail_rounded),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Experiência'),
              subtitle: Text('Minhas experiências'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 3;
                });
              },
            ),
          ],
        )),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Meu Perfil"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 131, 13, 13),
    );
  }
}
