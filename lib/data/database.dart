import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // Reference the Hive Box
  final _myBox = Hive.box("myBox");

  //Run this method is this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Task-1", false],
      ["Task-2", false],
    ];
  }

  // Load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //Update the Database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
