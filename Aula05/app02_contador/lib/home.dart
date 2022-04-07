import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Contador de Pessoas",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  
  @override
  _HomeState createState() => _HomeState() ;
}

class _HomeState extends State<Home> {

  int _pessoas = 0;

  void _mudaPessoas(int valor) {
   
    setState(() {
       _pessoas += valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        color: Color.fromARGB(255, 182, 125, 194),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  <Widget>[
            Text("Contador de pessoas",
            style: TextStyle(fontSize: 30),                      
            ),
            SizedBox(height: 50,),
            Text("$_pessoas",
            style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () { 
                    _mudaPessoas(1);
                   },
                  child: Text("+"),
                  color: Colors.green,
          
                ),
                SizedBox(width: 20,),
                RaisedButton(
                  onPressed: () { 
                     _mudaPessoas(-1);
                   },
                  child: Text("-"),
                  color: Colors.red,
          
            ), 
              ],
            ),   
          ],
        ),
      ),
      
    );
  }
}

