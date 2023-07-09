// ignore_for_file: public_member_api_docs, sort_constructors_first
class TodoData {
  final String todo;

  TodoData({
    required this.todo,
  });

  TodoData copy({
    String? todo,
  }) {
    return TodoData(todo: todo ?? this.todo);
  }
}
