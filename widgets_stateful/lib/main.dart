import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int totalClicks = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Total de cliques: $totalClicks",
                style: TextStyle(color: Colors.greenAccent),
              ),
              RaisedButton(
                onPressed: _increment,
                child: Text('Clicar'),
                color: Colors.greenAccent,
                textColor: Colors.white,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _increment,
          child: Icon(Icons.add),
          backgroundColor: Colors.greenAccent,
        ),
      ),
    );
  }

  void _increment() {
    setState(() {
      totalClicks++;
    });
  }
}
