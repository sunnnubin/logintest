import 'package:flutter/material.dart';
import 'package:sunyoubin/models/todo_data.dart';

class TodoProvider extends ChangeNotifier {
  ///Todo List
  final List<TodoData> _todolist = [];

  ///Done List
  final List<TodoData> _donelist = [];

  List<TodoData> get todoDataList => _todolist;
  List<TodoData> get doneDataList => _donelist;

  void add(String listText) {
    _todolist.add(
      TodoData(
        todo: listText,
      ),
    );
    debugPrint(listText);
    notifyListeners();
  }

  void doneremove(int index) {
    _donelist.removeAt(index);
  }

  void doneTodo(int index) {
    var doneTodo = _todolist.removeAt(index);
    _donelist.add(doneTodo.copy());
    notifyListeners();
  }
}
