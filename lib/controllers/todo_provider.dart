import 'package:flutter/material.dart';
import 'package:sunyoubin/models/todo_data.dart';

class TodoProvider extends ChangeNotifier {
  ///Todo List
  final List<TodoData> _todolist = [];

  ///Done List
  final List<TodoData> _donelist = [];

  List<TodoData> get todoDataList => _todolist;

  void add(String listText) {
    _todolist.add(
      TodoData(
        todo: listText,
      ),
    );
    debugPrint(listText);
    notifyListeners();
  }

  void remove(int listnum) {
    _todolist.remove(_todolist[listnum]);
    notifyListeners();
  }
}
