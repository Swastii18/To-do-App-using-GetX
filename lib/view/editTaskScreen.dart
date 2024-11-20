import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/controller/taskController.dart';
import 'package:to_do_app/model/task.dart';

class EditTaskScreen extends StatelessWidget {
  final Task task;
  final TextEditingController controller = TextEditingController();

  EditTaskScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    controller.text = task.task;
    TextTheme text = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Task",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Edit Task",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: InkWell(
                onTap: () {
                  if (controller.text.trim().isNotEmpty) {
                    Get.find<Taskcontroller>()
                        .updateTask(task, controller.text);
                    Get.back();
                  }
                },
                child: Container(
                  width: size.width * 0.5,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [Colors.tealAccent, Colors.teal],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Text('Edit Task',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
