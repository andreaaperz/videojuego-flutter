import 'package:flutter/material.dart';

class ConteoPage extends StatefulWidget{
  @override
  createState(){
    return _ConteoPageState();
  }
}

class _ConteoPageState extends State<ConteoPage>{
  final _style3 = new TextStyle(fontSize: 20, color:Colors.blueGrey);

  int vertical = 0;

  String _vertical = "";
  String _warning = "";
  String _sides = "Arriba";

  void goUp() => {
    setState(() {
      if (vertical == 10){
        vertical = 10;
        _warning = "Te saliste";
      } else{
        vertical++;
        _warning = "";
      }
      _vertical = vertical.toString();
    })
  };

  void goDown() => {
    setState(() {
      if (vertical == -10){
        vertical = -10;
        _warning = "Te saliste";
      } else{
        vertical--;
        _warning = "";
      }
      _vertical = vertical.toString();
    })
  };

  void goRight() => {
    setState(() {
      switch(_sides){
        case "Arriba":
          _sides = "Derecha";
          print(_sides);
          break;
        case "Derecha":
          _sides = "Abajo";
          break;
        case "Abajo":
          _sides = "Izquierda";
          break;
        case "Izquierda":
          _sides = "Arriba";
          break;
        default:
          _sides="Arriba";
          break;
      }
    })
  };

  void goLeft() => {
    setState(() {
      switch(_sides){
        case "Arriba":
          _sides = "Izquierda";
          break;
        case "Izquierda":
          _sides = "Abajo";
          break;
        case "Abajo":
          _sides = "Derecha";
          break;
        case "Derecha":
          _sides = "Arriba";
          break;
        default:
          _sides="Arriba";
          break;
      }
    })
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido al videojuego'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (Text('$vertical', style: _style3)),
            (Text('$_sides', style: _style3)),
            (Text('$_warning', style: _style3)),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: const EdgeInsets.all(50),
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(onPressed: goUp, child: Text('\u{2B06}', style:TextStyle(fontSize: 30))),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(onPressed: goLeft, child: Text('\u{2B05}', style:TextStyle(fontSize: 30))),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(onPressed: goRight, child: Text('\u{27A1}', style:TextStyle(fontSize: 30))),
                  Container(
                    padding: const EdgeInsets.all(0),
                  ),
                  FlatButton(onPressed: goDown, child: Text('\u{2B07}', style:TextStyle(fontSize: 30))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}