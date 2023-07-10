import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sunyoubin/controllers/todo_provider.dart';
import 'package:sunyoubin/widgets/todo_item_widget.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    var listdata = context.watch<TodoProvider>().doneDataList;
    return Scaffold(
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index) {
            var todo = listdata[index];
            return TodoItemWidget(
              index: index,
              checkTextBtn: '삭제',
              checkTextBtnColor: Colors.red,
              listText: todo.todo,
              date: '${todo.date}',
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: listdata.length,
        ),
      ),
    );
  }
}
