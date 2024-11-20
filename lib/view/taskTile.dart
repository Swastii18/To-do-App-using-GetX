// import 'package:flutter/material.dart';
// import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

// class TaskTile extends StatelessWidget {
//   const TaskTile(
//       {super.key,
//       required this.size,
//       required this.text,
//       this.time,
//       this.des,
//       this.press});

//   final Size size;
//   final TextTheme text;

//   final String? time, des;
//   final Callback? press;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       elevation: 5,
//       child: Container(
//         width: double.infinity,
//         height: 50,
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
//         child: Row(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               width: size.width * 0.1,
//               height: double.maxFinite,
//               color: Colors.red,
//               child: Text(
//                 '$time',
//                 style: text.headlineSmall!.copyWith(color: Colors.white),
//               ),
//             ),
//             Expanded(
//                 child: Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('$des', style: const TextStyle(fontSize: 20)),
//               ),
//             )),
//             GestureDetector(
//               onTap: press,
//               child: Container(
//                 alignment: Alignment.center,
//                 width: size.width * 0.1,
//                 height: double.maxFinite,
//                 color: Colors.red,
//                 child: const Icon(
//                   Icons.delete,
//                   color: Colors.white,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
