import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/cubit/notes_cubit/notes_cubit.dart';
import 'package:training/views/widgets/add_note_bottom_sheet.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              backgroundColor:const Color(0xff121212),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              }
          );
        },
        child: const Icon(Icons.add),


      ),
    );
  }
}

