// import 'package:flutter/material.dart';
// import 'package:futsal_management/models/team.dart';
// import 'package:futsal_management/screens/team_screen.dart';

// class TeamCard extends StatelessWidget {
//   const TeamCard({super.key, required this.team});

//   final Team team;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Card(
//         margin: const EdgeInsets.all(5),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         elevation: 5,
//         child: ListTile(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const TeamDetailsScreen(),
//               ),
//             );
//           },
//           title: Text(team.name),
//           subtitle:
//               Text('Dept: ${team.dept} | Players: ${team.players.length}'),
//         ),
//       ),
//     );
//   }
// }
