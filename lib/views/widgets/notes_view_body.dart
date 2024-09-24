import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0,),
      child: Column(
        children: [
          SizedBox(height: 20,),
          CustomAppBar(titleText: 'Notes', icon: Icons.search,),
          SizedBox(height: 12,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

