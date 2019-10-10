import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:splash/home.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([]);

    _checkAuth().then((_) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Home()
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              child: Image.asset('assets/images/logo-especializati-branca2.png'),
            ),
            Container(height: 40),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
            Container(height: 10),
            Text('Carregando...', style: TextStyle(
              color: Colors.white,
              fontSize: 16.0
            ))
          ],
        ),
      ),
    );
  }


  Future<String> _checkAuth() async {
    
    await Future.delayed(Duration(seconds: 3));

    return null;
  }
}