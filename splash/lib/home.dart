import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home App'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Text('Home App'),
      ),
    );
  }
}