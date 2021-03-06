import 'package:flutter/material.dart';

class ConteoPage extends StatefulWidget{
  @override
  createState(){
    return _ConteoPageState();
  }
}

class _ConteoPageState extends State<ConteoPage>{
  final _style = new TextStyle(fontSize: 30, color: Colors.blue);
  final _style2 = new TextStyle(fontSize: 20, color: Colors.black38);

  String _instructions = "";

  void setUpInstruction() => {
        setState(() {
          _instructions += 'up+';
        })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (Text('Hello Human c:, those are the instructions: ', style: _style)),
            (Text('$_instructions', style: _style2)),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(onPressed: setUpInstruction, child: Text('up')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(onPressed: setRInstruction, child: Text('right')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(onPressed: setLInstruction, child: Text('left')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(onPressed: setDInstruction, child: Text('down')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}