import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String result = '';
  double number1 = 0.0;
  double number2 = 0.0;

  @override
  Widget build(BuildContext context) {

    TextField num1 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepOrange),
      decoration: InputDecoration(
        labelText: 'Número 01',
        labelStyle: TextStyle(
          color: Colors.deepOrange
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)
        ),
      ),
      onChanged: (value) {
        number1 = double.parse(value);
      },
    );

    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepOrange),
      decoration: InputDecoration(
        labelText: 'Número 02',
        labelStyle: TextStyle(
          color: Colors.deepOrange
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)
        ),
      ),
      onChanged: (value) => number2 = double.parse(value)
    );

    RaisedButton button = RaisedButton(
      child: Text('Calcular'),
      color: Colors.deepOrange,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0)
      ),
      onPressed: () {
        setState(() {
          double calc = number1 + number2;
          this.result = "O resultado da soma é ${calc.toStringAsFixed(0)}";
        });
      },
    );

    Text result = Text(
      this.result,
      style: TextStyle(color: Colors.deepOrange),
    );

    Padding separator = Padding(
      padding: EdgeInsets.all(4.0),
    );

    Column columns = Column(
      children: <Widget>[
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          child: button,
          width: double.infinity,
        ),
        separator,
        result
      ],
    );

    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
          padding: EdgeInsets.all(14.0),
          child: columns,
        ),
      ),
    );
  }
}