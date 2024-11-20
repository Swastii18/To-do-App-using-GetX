// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:to_do_app/model/task.dart';

// class Taskcontroller extends GetxController {
//   final _taskList = <Task>[].obs;

//   List<Task> get taskList => _taskList.value;
//   TextEditingController? textEditingController;

//   @override
//   void onInit() {
//     super.onInit();
//     textEditingController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     textEditingController!.clear();
//   }

//   void addTask() {
//     String txt = textEditingController!.text;
//     DateTime dateTime = DateTime.now();
//     taskList.add(Task(txt, dateTime.month.toString()));
//     textEditingController!.text = " ";
//   }

//   void deleteTask(Task task) {
//     _taskList.remove(task);
//   }
// }

// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:to_do_app/model/task.dart';

// class Taskcontroller extends GetxController {
//   final _taskList = <Task>[].obs;

//   List<Task> get taskList => _taskList;

//   TextEditingController? textEditingController;

//   @override
//   void onInit() {
//     super.onInit();
//     textEditingController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     textEditingController?.dispose();
//   }

//   void addTask() {
//     String txt = textEditingController?.text.trim() ?? "";
//     if (txt.isNotEmpty) {
//       DateTime dateTime = DateTime.now();
//       String formattedDateTime =
//           DateFormat('yyyy-MM-dd HH:mm').format(dateTime);

//       _taskList.add(Task(txt, formattedDateTime));
//       textEditingController?.clear();
//     }
//   }

//   void deleteTask(Task task) {
//     _taskList.remove(task);
//   }
// }

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:to_do_app/model/task.dart';

class Taskcontroller extends GetxController {
  final _taskList = <Task>[].obs;

  List<Task> get taskList => _taskList;

  TextEditingController? textEditingController;

  @override
  void onInit() {
    super.onInit();
    textEditingController = TextEditingController();
    fetchTasks();
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController?.dispose();
  }

  void addTask() {
    String txt = textEditingController?.text.trim() ?? "";
    if (txt.isNotEmpty) {
      DateTime dateTime = DateTime.now();
      String formattedDateTime =
          DateFormat('yyyy-MM-dd HH:mm').format(dateTime);

      _taskList.add(Task(txt, formattedDateTime));
      textEditingController?.clear();
    }
  }

  void updateTask(Task task, String newTask) {
    task.task = newTask;
    _taskList.refresh();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
  }

  Future<void> fetchTasks() async {
    try {
      final response =
          await http.get(Uri.parse('https://dummyjson.com/todos?limit=7'));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        List<dynamic> todos = data['todos'];

        _taskList.value = todos.map((taskData) {
          String title = taskData['todo'];
          String createdAt = taskData['createdAt'] ?? DateTime.now().toString();

          return Task(title, createdAt);
        }).toList();
      } else {
        throw Exception('Failed to load tasks');
      }
    } catch (e) {
      print('Error fetching tasks: $e');
    }
  }
}
