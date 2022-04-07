import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController gasolinaController = TextEditingController();
  TextEditingController alcoolController = TextEditingController();

  String _infoText = "Informe o valor de cada combustível";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Gasolina ou Álcool"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 38, 104, 0),
    ),
    backgroundColor: Color.fromARGB(255, 180, 228, 168),
     
    body: SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(
              'https://thumbs.dreamstime.com/b/abastecendo-um-carro-com-gasolina-19393286.jpg',
              height: 120,
              width: 120,
            ),
            buildTextFormFieldGasolina(),
            buildTextFormFieldAlcool(),
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
        height: 50.0,
        child: RaisedButton(
          onPressed: () {
            if(_formkey.currentState!.validate()) {
              calcula();
              FocusScope.of(context).requestFocus(new FocusNode());
            }
          },
          child: Text("Calcular",
          style: TextStyle(color: Colors.white,
          fontSize: 20.0)
          ),
          color: Colors.green,
          ),
      );

    }

     buildTextFormFieldGasolina() {
     return TextFormField(
       keyboardType: TextInputType.number,
       decoration: InputDecoration(
         labelText: "Preço da Gasolina",
         labelStyle: TextStyle(color: Colors.black,
         fontSize: 20.0)
       ),
       style: TextStyle(fontSize: 20),
       controller: gasolinaController,
       validator: (value) {
         if(value!.isEmpty) {
           return 'Informe o valor da Gasolina';
         }
         return null;
       },
     );
   }

   buildTextFormFieldAlcool() {
     return TextFormField(
       keyboardType: TextInputType.number,
       decoration: InputDecoration(
         labelText: "Preço do Álcool",
         labelStyle: TextStyle(color: Colors.black,
         fontSize: 20.0)
       ),
       style: TextStyle(fontSize: 20),
        controller: alcoolController,
       validator: (value) {
         if(value!.isEmpty) {
           return 'Informe o valor do Álcool';
         }
         return null;
       },
     );
   }

   void calcula() {
     double gasolina = double.parse(gasolinaController.text);
     double alcool = double.parse(alcoolController.text);

     double resultado = (alcool/gasolina);

     if(resultado > 0.70) {
       _infoText = "Percentual : (${resultado.toStringAsPrecision(3)})\n\nVale a pena abastecer com Gasolina";
     } else {
       _infoText = "Percentual : (${resultado.toStringAsPrecision(3)})\n\nVale a pena abastecer com Álcool";
     }

   }
}