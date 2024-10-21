import 'package:flutter/material.dart';
import 'package:training/views/widgets/add_note_bottom_sheet.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  final VoidCallback toggleTheme;

  const NotesView({super.key ,required this.toggleTheme });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  NotesViewBody(toggleTheme:toggleTheme),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xff121212)
                  : Colors.white,
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              }
          );
        },
         backgroundColor: const  Color(0xff571985),
        child: const Icon(Icons.add, color: Colors.white,)

      ),
    );
  }
}

