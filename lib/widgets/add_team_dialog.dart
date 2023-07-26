// import 'package:flutter/material.dart';
// import 'package:futsal_management/models/team.dart';

// class AddTeamDialog extends StatefulWidget {
//   final Function(Team) onAdd;

//   const AddTeamDialog({super.key, required this.onAdd});

//   @override
//   _AddTeamDialogState createState() => _AddTeamDialogState();
// }

// class _AddTeamDialogState extends State<AddTeamDialog> {
//   final TextEditingController _teamNameController = TextEditingController();
//   final TextEditingController _departmentController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Add New Team'),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextField(
//             controller: _teamNameController,
//             decoration: const InputDecoration(labelText: 'Team Name'),
//           ),
//           TextField(
//             controller: _departmentController,
//             decoration: const InputDecoration(labelText: 'Department'),
//           ),
//         ],
//       ),
//       actions: [
//         ElevatedButton(
//           onPressed: () {
//             // Implement logic to add the new team here.
//             // For simplicity, we'll just print the team name and department.
//             final teamName = _teamNameController.text;
//             final department = _departmentController.text;

//             final newTeam = Team(
//               name: teamName,
//               dept: department,
//             );

//             widget.onAdd(newTeam);

//             // Close the dialog
//             Navigator.pop(context);
//           },
//           child: const Text('Add'),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             // Close the dialog without adding a new team
//             Navigator.pop(context);
//           },
//           child: const Text('Cancel'),
//         ),
//       ],
//     );
//   }
// }
