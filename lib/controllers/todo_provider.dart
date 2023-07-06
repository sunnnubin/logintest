import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:sunyoubin/widgets/todo_list_widget.dart';

class TodoProvider extends ChangeNotifier {
  ///Todo List
  final List _todolist = [];

  ///Done List
  final List _donelist = [];

  UnmodifiableListView get todoList => UnmodifiableListView(_todolist);

  void add(String listText) {
    _todolist.add(listText);
    notifyListeners();
  }

  void remove(TodoListWidget listText) {
    _todolist.remove(listText);
    notifyListeners();
  }
}
