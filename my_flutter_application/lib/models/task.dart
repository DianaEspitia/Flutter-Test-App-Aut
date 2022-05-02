class Task{
  final int id;
  final String title;
  final DateTime date;
  final DateTime time;
  final int alarm;
  Task({required this.id, required this.title, required this.date, required this.time, required this.alarm});

  Map<String, dynamic> toMap(){
    return{
      "id": id,
      "title": title,
      "date": date,
      "time": time,
      "alarm": alarm
    };
  }
}