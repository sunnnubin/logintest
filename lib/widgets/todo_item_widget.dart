import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sunyoubin/controllers/todo_provider.dart';

///리스트 아이템 위젯
class TodoItemWidget extends StatelessWidget {
  final String checkTextBtn;
  final Color checkTextBtnColor;
  final String listText;
  final int index;
  final String date;

  const TodoItemWidget({
    super.key,
    required this.checkTextBtn,
    required this.checkTextBtnColor,
    required this.listText,
    required this.index,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(
                Icons.check,
                color: Colors.grey,
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(listText),
                      Text(
                        date,
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  return checkTextBtn == "완료"
                      ? context.read<TodoProvider>().doneTodo(index)
                      : context.read<TodoProvider>().doneRemove(index);
                },
                child: Text(
                  checkTextBtn,
                  style: TextStyle(color: checkTextBtnColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
