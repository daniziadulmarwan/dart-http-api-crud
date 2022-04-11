class Todo {
  String id;
  String title;
  String body;

  Todo(this.id, this.title, this.body);

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(json['id'], json['title'], json['body']);
  }
}
