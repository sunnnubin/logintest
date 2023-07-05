import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final _todoTextEditController = TextEditingController();
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: _todoTextEditController,
          decoration: InputDecoration(
            isDense: true,
            border: const OutlineInputBorder(),
            labelText: '한줄 To-do 입력하기',
            prefix: TextButton(
              onPressed: () {},
              child: const Text('추가'),
            ),
          ),
        ),
      ),
    );
  }
}
