import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task'),
      trailing: Checkbox(
        value: false, onChanged: (bool? value) {  },
      ),
    );
  }
}

// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is a task',
//         style: TextStyle(
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//       trailing: TaskCheckbox(
//           checkboxState: isChecked,
//           toggleCheckboxState: (bool checkboxState) {
//             setState(() {
//               isChecked=checkboxState;
//             });
//           },
//       ),
//     );
//   }
// }
//
// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final Function toggleCheckboxState;
//
//   TaskCheckbox({required this.checkboxState,required this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.blueAccent,
//       value: checkboxState,
//       onChanged:toggleCheckboxState(),
//     );
//   }
// }
