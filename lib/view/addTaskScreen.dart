// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:to_do_app/controller/taskController.dart';

// class AddTaskScreen extends StatelessWidget {
//   AddTaskScreen({super.key});
//   final Taskcontroller controller = Get.put(Taskcontroller());

//   @override
//   Widget build(BuildContext context) {
//     TextTheme text = Theme.of(context).textTheme;
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: true,
//       ),
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15),
//         child: Column(
//           children: [
//             const Spacer(flex: 3),
//             const Text(
//               'Add new Task',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
//             ),
//             const Spacer(flex: 1),
//             TextField(
//               controller: controller.textEditingController,
//               decoration: InputDecoration(
//                   filled: true,
//                   fillColor: const Color(0xffeeeeee),
//                   hintText: "Enter Task Description",
//                   hintStyle: const TextStyle(color: Colors.grey),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25))),
//             ),
//             const SizedBox(height: 25),
//             InkWell(
//               onTap: () {
//                 controller.addTask();
//                 Get.back();
//               },
//               child: Container(
//                 width: double.infinity,
//                 height: 40,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.red,
//                 ),
//                 child: Text('Add task',
//                     style: text.labelLarge!.copyWith(color: Colors.white)),
//               ),
//             ),
//             const Spacer(flex: 3),
//           ],
//         ),
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/controller/taskController.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});
  final Taskcontroller controller = Get.put(Taskcontroller());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Task',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create a New Task',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: controller.textEditingController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xfff9f9f9),
                    hintText: "Enter task description",
                    hintStyle: const TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.teal),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: InkWell(
                    onTap: () {
                      controller.addTask();
                      Get.back();
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
                      child: const Text('Add Task',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
