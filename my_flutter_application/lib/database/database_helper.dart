import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'package:my_flutter_application/models/task.dart';

class DatabaseHelper{

  Future<Database> database() async {
    return openDatabase(
        join(await getDatabasesPath(), 'task.db'),
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          'CREATE TABLE task(id INTEGER PRIMARY KEY, title TEXT, date DATETIME, time DATETIME, alarm INTEGER)',
        );
      },
    );
  }

  Future<void> insertTask(Task task) async{
    Database _db = await database();
    await _db.insert('tasks', task.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

}