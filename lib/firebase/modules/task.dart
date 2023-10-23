class Task {
  static const tasksname = 'tasks';
  String? id;
  String? title;
  String? descreption;
  DateTime? date;
  bool? isdone = false;

  Task({required this.title, required this.descreption, required this.date});

  Task.fromjeson(Map<String, dynamic> data) {
    id = data['id'];
    title = data['title'];
    descreption = data['desc'];
    date = DateTime.fromMillisecondsSinceEpoch(data['date']);
    isdone = data['isdone'];
  }
  Map<String, dynamic> tojeson() {
    return {
      'id': id,
      'title': title,
      'desc': descreption,
      'date': date?.millisecondsSinceEpoch,
      'isdone': isdone,
    };
  }
}
