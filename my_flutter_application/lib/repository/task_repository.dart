import 'package:my_flutter_application/database/database_helper.dart';
import 'package:my_flutter_application/models/model_task.dart';

class TaskRepository {
  Future<List<ModelTask>> getTask() async {
    // llamas base y traes toda la lista
    final a = await DatabaseHelper().getTasks();
    print(a);
    return a;
  }

  Future<dynamic> getTitleTask() async {
    return await DatabaseHelper().getTitleTask();
  }
}
