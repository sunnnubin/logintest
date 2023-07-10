import 'package:flutter/material.dart';
import 'package:sunyoubin/models/todo_data.dart';

class TodoProvider extends ChangeNotifier {
  ///Todo List
  final List<TodoData> _todolist = [];

  ///Done List
  final List<TodoData> _donelist = [];

  List<TodoData> get todoDataList => _todolist;
  List<TodoData> get doneDataList => _donelist;

  ///데이터 입력함수
  void add(String listText) {
    _todolist.add(
      TodoData(
        todo: listText,
        date: DateTime.now(),
      ),
    );
    debugPrint(listText);
    notifyListeners();
  }

  ///완료리스트 삭제함수
  void doneRemove(int index) {
    _donelist.removeAt(index);
    notifyListeners();
  }

  ///완료버튼 함수, todoList -> doneList 값전달
  void doneTodo(int index) {
    var doneTodo = _todolist.removeAt(index);
    _donelist.add(doneTodo.copy());
    notifyListeners();
  }
}
