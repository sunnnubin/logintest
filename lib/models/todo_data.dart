// ignore_for_file: public_member_api_docs, sort_constructors_first
class TodoData {
  final String todo;
  final String date;

  TodoData({
    required this.todo,
    required this.date,
  });

  TodoData copy({
    String? todo,
  }) {
    return TodoData(todo: todo ?? this.todo, date: DateTime.now().toString());
  }
}
