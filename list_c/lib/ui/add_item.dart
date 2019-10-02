import 'package:flutter/material.dart';

import 'package:list_c/models/Item.dart';

class AddItem extends StatelessWidget {

  final itemC = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Item'),
      content: TextField(
        autofocus: true,
        controller: itemC,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancelar'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            final item = new Item(title: itemC.value.text);
            itemC.clear();

            Navigator.of(context).pop(item);
          },
        ),
      ],
    );
  }
}