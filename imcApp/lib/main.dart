import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadore de IMC'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(104, 34, 139, 1.0),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: () {})
        ],
      ),
      backgroundColor: Colors.grey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(Icons.person_outline,
              size: 140.0, color: Color.fromRGBO(104, 34, 139, 1.0)),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: 'Peso (KG)',
                labelStyle:
                    TextStyle(color: Color.fromRGBO(104, 34, 139, 1.0))),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
