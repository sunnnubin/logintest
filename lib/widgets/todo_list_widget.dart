import 'package:flutter/material.dart';

class TodoListWidget extends StatefulWidget {
  final String checkTextBtn;
  final Color checkTextBtnColor;

  const TodoListWidget({
    super.key,
    required this.checkTextBtn,
    required this.checkTextBtnColor,
  });

  @override
  State<TodoListWidget> createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends State<TodoListWidget> {
  var date = DateTime.now();

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
                      const Text('여기에 가져온 데이터 출력'),
                      Text(
                        date.toString(),
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  widget.checkTextBtn,
                  style: TextStyle(color: widget.checkTextBtnColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
