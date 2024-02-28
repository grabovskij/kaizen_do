class ReadTodo {
  final int id;
  final String title;
  final bool done;

  ReadTodo({
    required this.id,
    required this.title,
    required this.done,
  });
}

extension ReadTodoCopy on ReadTodo {
  ReadTodo copyWith({
    String? title,
    bool? done,
  }) {
    return ReadTodo(
      id: id,
      title: title ?? this.title,
      done: done ?? this.done,
    );
  }
}
