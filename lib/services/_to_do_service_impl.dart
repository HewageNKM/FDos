import 'package:f_dos/db/_db.dart';
import 'package:f_dos/modals/_note.dart';
import 'package:f_dos/services/_to_do_service.dart';
import 'package:sqflite/sqlite_api.dart';

class ToDoServerImpl implements ToDoService {
  late Database database;

  ToDoServerImpl() {
    initDB();
  }

  void initDB() async {
    database = await DBHelper.instance.database;
  }

  @override
  Future<String> addNote(Note note) {
    // TODO: implement addNote
    throw UnimplementedError();
  }

  @override
  Future<String> deleteNote(String id) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<String> updateNote(Note note) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}
