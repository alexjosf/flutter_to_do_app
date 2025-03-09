import 'package:hive_flutter/adapters.dart';

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box("myBox");

  void createIntialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Go Gym", true],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
