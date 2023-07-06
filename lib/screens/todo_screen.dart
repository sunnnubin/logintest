import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sunyoubin/controllers/todo_provider.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final _todoTextEditController = TextEditingController();
  static String newTodoListText = '';
  @override
  void initState() {
    super.initState();
    _todoTextEditController.addListener(() {
      newTodoListText = _todoTextEditController.text;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _todoTextEditController.dispose();
  }

  void _submit() {
    Provider.of<TodoProvider>(context, listen: false).add(newTodoListText);

    _todoTextEditController.clear();
  }

  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final listdata = Provider.of<TodoProvider>(context);
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: listdata.todoList.length,
          itemBuilder: (BuildContext context, int index) {
            listdata;
            return null;
          },
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            TextField(
              controller: _todoTextEditController,
              decoration: const InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                labelText: '한줄 To-do 입력하기',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 330, right: 10, top: 5),
              child: TextButton(
                onPressed: () {
                  _submit();
                  debugPrint(newTodoListText);
                },
                child: const Text(
                  '추가',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
