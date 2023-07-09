import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sunyoubin/controllers/todo_provider.dart';
import 'package:sunyoubin/widgets/todo_list_widget.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final _todoTextEditController = TextEditingController();

  void addTodo() {
    var todotext = _todoTextEditController;
    context.read<TodoProvider>().add(todotext.text);
    todotext.clear();
  }

  @override
  void dispose() {
    super.dispose();
    _todoTextEditController.dispose();
  }

  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var listdata = context.watch<TodoProvider>().todoDataList;
    return Scaffold(
      body: Center(
        child: ListView.separated(
          itemCount: listdata.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 5,
          ),
          itemBuilder: (context, index) {
            var todo = listdata[index];
            return TodoListWidget(
              checkTextBtn: '완료',
              checkTextBtnColor: Colors.green,
              listText: todo.todo,
            );
          },
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: _todoTextEditController,
          decoration: InputDecoration(
            isDense: true,
            border: const OutlineInputBorder(),
            labelText: '한줄 To-do 입력하기',
            prefix: TextButton(
              onPressed: () {
                addTodo();
              },
              child: const Text(
                '추가',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
