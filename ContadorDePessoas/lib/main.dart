import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'contador de pessoas', home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = 'Pode Entrar!!';

  void _changePeople(int d) {
    setState(() {
      _people += d;

      if (_people == 10)
        _infoText = 'Infelizmente estamos lotados, por favor aguarde!!';
      else
        _infoText = 'Pode Entrar!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Pessoas: $_people',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                  onPressed: () {
                    debugPrint('+1');
                    if (_people < 10) _changePeople(1);
                  },
                  child: Text(
                    '+1',
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  )),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                    onPressed: () {
                      debugPrint('-1');
                      if (_people > 0) _changePeople(-1);
                    },
                    child: Text(
                      '-1',
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ))),
          ],
        ),
        Text(_infoText,
            style: TextStyle(
                color: Colors.white,
                fontSize: 36.0,
                fontStyle: FontStyle.italic))
      ],
    );
  }
}
