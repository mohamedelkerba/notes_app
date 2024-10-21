import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../cubit/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_app_bar.dart';
import 'edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   TextEditingController ?titleController;
   TextEditingController ?subTitleController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.note.title);
    subTitleController = TextEditingController(text: widget.note.subTitle);
  }

  @override
  void dispose() {
    titleController?.dispose();
    subTitleController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          CustomAppBar(
            isThemeToggle: false,
            titleText: 'EditNotes',
            iconAsset: 'assets/images/light_icon.svg',
            onTap: () {
              widget.note.title = titleController!.text;
              widget.note.subTitle = subTitleController!.text;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 12,),
          CustomTextField(
            controller: titleController!,
            hintText: 'Title',
          ),
          const SizedBox(height: 16,),
          CustomTextField(
            controller: subTitleController!,
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 16,),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}


