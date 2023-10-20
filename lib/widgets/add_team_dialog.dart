import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddTeamDialog extends StatefulWidget {
  const AddTeamDialog({super.key});

  @override
  _AddTeamDialogState createState() => _AddTeamDialogState();
}

class _AddTeamDialogState extends State<AddTeamDialog> {
  File? _teamLogo;

  @override
  Widget build(BuildContext context) {
    TextEditingController teamNameController = TextEditingController();

    return AlertDialog(
      title: const Text('Add New Team'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
            width: 20,
          ),
          _teamLogo != null
              ? Image.file(
                  _teamLogo!,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                )
              : const Placeholder(
                  fallbackHeight: 100,
                  fallbackWidth: 100,
                ),
          ElevatedButton(
            onPressed: () async {
              final pickedFile =
                  await ImagePicker().pickImage(source: ImageSource.gallery);
              if (pickedFile != null) {
                setState(() {
                  _teamLogo = File(pickedFile.path);
                });
              }
            },
            child: const Text('Pick Logo'),
          ),
          TextField(
            controller: teamNameController,
            decoration: const InputDecoration(labelText: 'Team Name'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            String teamName = teamNameController.text;
            // Add the team to the list or API with teamName and _teamLogo (if selected)
            // After adding the team, close the dialog and return the result
            Navigator.pop(
                context, {'teamName': teamName, 'teamLogo': _teamLogo});
          },
          child: const Text('Add'),
        ),
        TextButton(
          onPressed: () {
            // Close the dialog without adding the team and return null
            Navigator.pop(context, null);
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
