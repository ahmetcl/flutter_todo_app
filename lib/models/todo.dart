class Todo {
  int id;
  String title;
  String description;
  bool isDone;

  Todo(
      {required this.id,
      required this.title,
      required this.description,
      required this.isDone});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (id != null) {
      map['id'] = id;
    }
    map['title'] = title;
    map['description'] = description;
    map['isDone'] = isDone ? 1 : 0;

    return map;
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
        id: map['id'],
        title: map['title'],
        description: map['description'],
        isDone: map['isDone'] == 1);
  }
}
