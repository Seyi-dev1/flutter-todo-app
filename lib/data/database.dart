import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //reference box
  final myBox = Hive.box('mybox');

  //run this method if this is the first time opening this app, ever.
  void createInitialData() {
    toDoList = [
      ['make tutorial', false],
      ['exercise', false]
    ];
  }

  //load data from databas
  void loadData() {
    toDoList = myBox.get('TODOLIST');
  }

  //update the database
  void updateDatabase() {
    myBox.put('TODOLIST', toDoList);
  }
}
