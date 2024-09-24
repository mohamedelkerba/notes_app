import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0,),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 10,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}

