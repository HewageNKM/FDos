import 'dart:async';

import 'package:f_dos/modals/_note.dart';

abstract interface class ToDoService {
  Future<String> addNote(Note note);

  Future<String> updateNote(Note note);

  Future<String> deleteNote(String id);
}
