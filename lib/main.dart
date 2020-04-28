import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Controle de Pessoas",
      home: Home(),
    ),
    );
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  int _qtdPessoas =0;

  void _changeQtdPessoas(int variante){
    setState(() {
      _qtdPessoas += variante;
    });
  }
  @override
  Widget build(BuildContext context){
    return
      Stack(
        children: <Widget>[
          Image.asset(
            "images/fundo_b.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Pessoas: $_qtdPessoas", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Padding(
                      padding: EdgeInsets.all(10.2),
                      child:
                      FlatButton(
                        child:  Text("+1", style: TextStyle(fontSize: 35.0, color: Colors.white),),
                        onPressed: () {
                          _changeQtdPessoas(1);
                        },
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.all(10.2),
                        child:
                        FlatButton(
                          child:  Text("-1", style: TextStyle(fontSize: 35.0, color: Colors.white),),
                          onPressed: () {
                            _changeQtdPessoas(-1);
                          },
                        )
                    ),
                  ]
              ),

              Text("Pode entrar!", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25.00,),),
            ],
          )
        ],
      );
  }
}
