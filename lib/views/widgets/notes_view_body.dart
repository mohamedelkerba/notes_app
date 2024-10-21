import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/cubit/notes_cubit/notes_cubit.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  final VoidCallback toggleTheme;

  const NotesViewBody({super.key, required this.toggleTheme});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,),
      child: Column(
        children: [
         const SizedBox(height: 20,),
          CustomAppBar(
            isThemeToggle: true,
            titleText: 'Notes',
            iconAsset: 'assets/images/night_icon.svg' ,
            onTap: widget.toggleTheme,
          ),
          const SizedBox(height: 12,),
          const   Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

