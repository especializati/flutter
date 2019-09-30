import 'dart:math';

import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key key}) : super(key: key);

  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Dynamic'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.deepPurple),
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: IconTheme(
                child: Icon(Icons.ac_unit),
                data: IconThemeData(color: Colors.white),
              ),
            ),
            title: Text(
              todos[index],
              style: TextStyle(color: Colors.deepPurple),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),
    );
  }

  void _addTodo() {
    setState(() {
      int randomNumber = new Random().nextInt(100);
     todos.add("Task $randomNumber"); 
    });
  }
}