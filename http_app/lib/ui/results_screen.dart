import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:http_app/models/User.dart';

class ResultsScreen extends StatelessWidget {
  final String username;
  
  const ResultsScreen({Key key, this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Resultados'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: FutureBuilder(
          future: _fetchUser(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final user = snapshot.data;
              return Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(user.avatarUrl, height: 100),
                    ),
                    Container(height: 10),
                    Text(user.name, style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )),
                    Container(height: 10),
                    Text("(${user.blog})", style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white
                    )),
                    Container(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Text("Seguidores: ${user.followers}", style: TextStyle(
                            color: Colors.white,
                          )),
                        ),
                        Container(width: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Text("Repositórios: ${user.publicRepos}", style: TextStyle(
                            color: Colors.white,
                          )),
                        ),
                      ],
                    )
                  ],
                ),
              );
            } else if(snapshot.hasError) {
              return Text("Erro: ${snapshot.error}");
            }

            return CircularProgressIndicator(
              backgroundColor: Colors.black,
            );
          },
        ),
      ),
    );
  }

  Future<User> _fetchUser() async {
    final response = await http.get('https://api.github.com/users/$username');

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw new Exception('Algo deu errado');
    }
  }
}