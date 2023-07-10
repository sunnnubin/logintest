import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sunyoubin/controllers/todo_provider.dart';
import 'package:sunyoubin/widgets/todo_item_widget.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  ///투두 텍스트필드 컨트롤러
  final _todoTextEditController = TextEditingController();

  ///필드 값 리스트 추가함수
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

  //
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
            return TodoItemWidget(
              index: index,
              checkTextBtn: '완료',
              checkTextBtnColor: Colors.green,
              listText: todo.todo,
              date: '${todo.date}',
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
            suffix: TextButton(
              onPressed: () {
                addTodo();
              },
              child: const Text(
                '추가',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
