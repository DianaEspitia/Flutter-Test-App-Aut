class ModelTask {
  final int? id;
  final String title;
  final int date;
  final int time;
  final int alarm;

  ModelTask({
    this.id,
    required this.title,
    required this.date,
    required this.time,
    required this.alarm,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "date": date,
      "time": time,
      "alarm": alarm
    };
  }

  @override
  String toString() {
    return 'ModelTask{id: $id, title: $title, date: $date, time: $time, alarm: $alarm}';
  }
}
