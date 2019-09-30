import 'package:flutter/material.dart';

void main() => runApp(ListApp());

class ListApp extends StatelessWidget {

  List<String> items = ['Task 1', 'Task 2', 'Task 3', 'Task 4', 'Task 5', 'Task 6', 'Task 7', 'Task 8'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List App'),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => Divider(color: Colors.deepPurple),
          itemCount: items.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: IconTheme(
                  child: Icon(Icons.add_photo_alternate),
                  data: IconThemeData(color: Colors.white),
                ),
              ),
              onTap: () {},
              title: Text(items[index], style: TextStyle(color: Colors.deepPurple),),
              subtitle: Text("Sub ${index + 1} teste", style: TextStyle(color: Colors.deepPurple),),
            );
          },
        ),
      ),
    );
  }
}