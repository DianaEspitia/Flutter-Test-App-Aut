//import 'package:my_flutter_application/widgets/home/model_task.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:my_flutter_application/models/model_task.dart';

class DatabaseHelper {
  Future<Database> database() async {
    return openDatabase(
      join(await getDatabasesPath(), 'task.db'),
      version: 1,
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
            'CREATE TABLE task(id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, alarm INTEGER)',
        );
      },
    );
  }

  Future<void> insertTask(ModelTask task) async {
    //Database _db = await database();
    final db = await database();
    //await _db.insert('tasks', task.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
    await db.insert('task', task.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<ModelTask>> getTasks() async {
    // Get a reference to the database.
    final db = await database();

    // Query the table for all The tasks.
    final List<Map<String, dynamic>> maps = await db.query('task');
    /*maps.forEach((element) {
      print(element);
    });*/
    return List.generate(maps.length, (i) {
      return ModelTask(
          id: maps[i]['id'],
          title: maps[i]['title'],
          date: maps[i]['date'],
          time: maps[i]['time'],
          alarm: maps[i]['alarm']);
    });
  }

  Future<dynamic> getTitleTask() async {
    final db = await database();

    final title = await db.rawQuery("SELECT title FROM task");
    return title;
  }

  Future<void> deleteData() async {
    final db = await database();
    await db.rawDelete('DELETE FROM task');
  }

  Future<dynamic> updateTask(int id) async{
    final db = await database();

    final task = await db.rawQuery("UPDATE task WHERE id=" + id.toString());
    return task;
  }

  Future<dynamic> updateItem(int id, String title, String time, String date, int alarm) async {
    final db = await database();

    final data = {
      'title': title,
      'time': time,
      'date': date,
      'alarm': alarm,
    };

    final result =
    await db.update('task', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

}
