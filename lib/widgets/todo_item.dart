import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onTapped;
  final onDeleteItem;
  
  const TodoItem({super.key, required this.todo, this.onTapped, this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        onTap: () {
          print('Clicked todo item');
          onTapped(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: blue,
        ),
        title: Text(
          todo.todoText,
          style: TextStyle(
            fontSize: 16,
            color: black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              print('Clicked on delete icon');
              onDeleteItem(todo.id);
            },
            icon: Icon(Icons.delete),
            color: white,
            iconSize: 18,
          ),
        ),
      ),
    );
  }
}
