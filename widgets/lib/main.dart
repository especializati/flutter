import 'package:flutter/material.dart';

void main() => runApp(WidgetsApp());

class WidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Text text = Text('Exemplo');
    TextField entry = TextField();

    return MaterialApp(
      title: 'Wigets App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets App'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              text,
              entry,
              Text(
                'Exemplo 2',
                style: TextStyle(color: Colors.deepPurple),
              ),
              Row(
                children: <Widget>[
                  Text('01'),
                  Text('02'),
                ],
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Clique-me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
