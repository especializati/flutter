import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carrinho de Compras',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
      ),
      body: Center(
        child: Text('Carrinho de Compras'),
      ),
    );
  }
}