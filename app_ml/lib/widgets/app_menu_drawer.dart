import 'package:flutter/material.dart';

import 'package:app_ml/pages/page01.dart';
import 'package:app_ml/pages/page02.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 120.0,
          child: DrawerHeader(
            decoration: BoxDecoration(color: Color.fromRGBO(255, 241, 89, 1)),
            child: Row(
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  child: CircleAvatar(
                    child: Icon(Icons.people),
                    backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                    foregroundColor: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      border: Border.all(color: Colors.grey, width: 4.0)),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Olá, Carlos!',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text('Nível Avançado')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        _itemDrawer(context, Page01(), icon: Icon(Icons.home), text: 'Home'),
        _itemDrawer(context, Page02(), icon: Icon(Icons.hotel), text: 'Página 02'),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page01(), icon: Icon(Icons.label_important), text: 'Página 03'),
        _itemDrawer(context, Page01(), 
            icon: Icon(Icons.location_searching),
            text: 'Página 04',
            badge: '5'),
        _itemDrawer(context, Page01(), icon: Icon(Icons.filter_8), text: 'Página 05'),
        _itemDrawer(context, Page01(), icon: Icon(Icons.face), text: 'Página 06'),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page01(), icon: Icon(Icons.exit_to_app), text: 'Sair'),
      ],
    );
  }

  Widget _itemDrawer(context, page, {Icon icon, String text, String badge = ''}) {
    return ListTile(
      leading: IconTheme(
        child: icon,
        data: IconThemeData(color: Colors.black),
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      trailing: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(40.0)
        ),
        child: badge != ''
            ? Padding(
                padding: EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0),
                child: Text(
                  badge,
                  style: TextStyle(
                      backgroundColor: Colors.black, color: Colors.white),
                ),
              )
            : Text(''),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => page
        ));
      },
    );
  }
}
