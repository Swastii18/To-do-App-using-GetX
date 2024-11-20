// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:to_do_app/controller/taskController.dart';
// import 'package:to_do_app/view/addTaskScreen.dart';
// import 'package:to_do_app/view/taskTile.dart';

// class ToDoScreen extends StatelessWidget {
//   ToDoScreen({super.key});
//   Taskcontroller controller = Get.put(Taskcontroller());

//   @override
//   Widget build(BuildContext context) {
//     TextTheme text = Theme.of(context).textTheme;
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       floatingActionButton: InkWell(
//         onTap: () {
//           Get.to(AddTaskScreen());
//         },
//         child: Container(
//           height: 50,
//           width: 50,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(50),
//             color: Colors.red,
//           ),
//           child: const Icon(
//             Icons.add,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Obx(
//           () => controller.taskList.isEmpty
//               ? const Center(
//                   child: Text(
//                     'No Task Found',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
//                   ),
//                 )
//               : Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 10.0, vertical: 20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "To Do Tasks",
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w500),
//                       ),
//                       const SizedBox(height: 10),
//                       Expanded(
//                         child: ListView.builder(
//                           itemCount: controller.taskList.length,
//                           itemBuilder: (context, index) => TaskTile(
//                             size: size,
//                             text: text,
//                             time: controller.taskList[index].taskCreated,
//                             des: controller.taskList[index].task,
//                             press: () {
//                               controller.deleteTask(controller.taskList[index]);
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:to_do_app/controller/taskController.dart';
// import 'package:to_do_app/view/addTaskScreen.dart';

// class ToDoScreen extends StatelessWidget {
//   ToDoScreen({super.key});
//   Taskcontroller controller = Get.put(Taskcontroller());

//   @override
//   Widget build(BuildContext context) {
//     TextTheme text = Theme.of(context).textTheme;
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'To-Do List',
//           style: TextStyle(
//               fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.teal,
//         elevation: 0,
//       ),
//       floatingActionButton: InkWell(
//         onTap: () {
//           Get.to(AddTaskScreen());
//         },
//         child: Container(
//           height: 60,
//           width: 60,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             color: Colors.teal,
//           ),
//           child: const Icon(
//             Icons.add,
//             color: Colors.white,
//             size: 30,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Obx(
//           () => controller.taskList.isEmpty
//               ? Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         Icons.task_alt,
//                         size: 100,
//                         color: Colors.grey,
//                       ),
//                       const SizedBox(height: 20),
//                       const Text(
//                         'No Tasks Found',
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.w400),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                         'Tap the "+" button to add a task',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey.shade600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               : Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 16.0, vertical: 20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "You have ${controller.taskList.length} tasks",
//                         style: const TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       Expanded(
//                         child: ListView.builder(
//                           itemCount: controller.taskList.length,
//                           itemBuilder: (context, index) => Container(
//                             margin: const EdgeInsets.only(bottom: 15),
//                             child: Card(
//                               elevation: 3,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: ListTile(
//                                 contentPadding: const EdgeInsets.symmetric(
//                                     horizontal: 15, vertical: 10),
//                                 title: Text(
//                                   controller.taskList[index].task,
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 subtitle: Text(
//                                   "Created on: ${controller.taskList[index].taskCreated}",
//                                   style: const TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                                 trailing: IconButton(
//                                   icon: const Icon(Icons.delete,
//                                       color: Colors.red),
//                                   onPressed: () {
//                                     controller
//                                         .deleteTask(controller.taskList[index]);
//                                   },
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/controller/taskController.dart';
import 'package:to_do_app/view/addTaskScreen.dart';
import 'package:to_do_app/view/editTaskScreen.dart';

class ToDoScreen extends StatelessWidget {
  ToDoScreen({super.key});
  Taskcontroller controller = Get.put(Taskcontroller());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'To-Do List',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(AddTaskScreen());
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.teal,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.taskList.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.task_alt,
                        size: 100,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'No Tasks Found',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Tap the "+" button to add a task',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You have ${controller.taskList.length} tasks",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView.builder(
                          itemCount: controller.taskList.length,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                title: Text(
                                  controller.taskList[index].task,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                subtitle: Text(
                                  "Created on: ${controller.taskList[index].taskCreated}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.green,
                                      ),
                                      onPressed: () {
                                        Get.to(
                                          EditTaskScreen(
                                            task: controller.taskList[index],
                                          ),
                                        );
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete,
                                          color: Colors.red),
                                      onPressed: () {
                                        controller.deleteTask(
                                            controller.taskList[index]);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
