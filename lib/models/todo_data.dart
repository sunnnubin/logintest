// ignore_for_file: public_member_api_docs, sort_constructors_first

class TodoData {
  final String todo;
  final DateTime date;

  ///데이터
  TodoData({
    required this.todo,
    required this.date,
  });

  ///복사데이터
  TodoData copy({
    String? todo,
    DateTime? date,
  }) {
    return TodoData(
      todo: todo ?? this.todo,
      date: date ?? this.date,
    );
  }
}
