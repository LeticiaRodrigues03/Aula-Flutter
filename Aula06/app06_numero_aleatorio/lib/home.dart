import 'dart:math';

import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController numeroController = TextEditingController();
  TextEditingController numeroSortController = TextEditingController();

  String _infoText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Jogo de Número Aleatório",
      style: TextStyle(color: Colors.black)
      ),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 236, 154, 0),
    ),
    backgroundColor: Color.fromARGB(255, 243, 236, 144),
     
    body: SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Form(
        key: _formkey,
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[                   
            Image.network(
              'data:image/png;base64,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',
              height: 150,
              width: 150,
            ),            
            Text("Pense em um nº de 0 a 10",
            style: TextStyle(color: Colors.black,
            fontSize: 25,
            height: 2)
            ),
            buildTextFormFieldNumero(),
            buildContainerButton(context),
            buildTextInfo()
          ],
        ),
      ),
    ),
      
  );  
  
  }

    buildTextInfo() {
      return Text(_infoText,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, 
              fontSize: 20.0),
      );
    }

    buildContainerButton(BuildContext context) {
      return Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        height: 65.0,
        child: RaisedButton(
          onPressed: () {
            if(_formkey.currentState!.validate()) {
              calcula();
              FocusScope.of(context).requestFocus(new FocusNode());
            }
          },
          child: Text("Descobrir",
          style: TextStyle(color: Colors.black,
          fontSize: 20.0)
          ),
          color: Colors.orange,
          ),
      );

    }

     buildTextFormFieldNumero() {
     return TextFormField(     
       keyboardType: TextInputType.number,
       decoration: InputDecoration(
         labelText: "Número",
         labelStyle: TextStyle(color: Colors.black,
         fontSize: 20.0)
       ),
       style: TextStyle(fontSize: 20),
       controller: numeroController,
       validator: (value) {
         if(value!.isEmpty) {
           return 'Informe o valor do Número';
         } else if (double.parse(value) < 0 || double.parse(value) > 10) {
           return 'Informe um Número de 0 a 10';
         }
         return null;
       },
     );
   }


   void calcula() {

     int numero = int.parse(numeroController.text);
     int numeroSort = new Random().nextInt(11);

    
     if(numeroSort == numero) {
       _infoText = "Acertou! O número aleatório é $numeroSort";
     } else {
       _infoText = "Errou! O número aleatório é $numeroSort";
     }

   }
}