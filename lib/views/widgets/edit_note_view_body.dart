import 'package:flutter/material.dart';
import '../../core/widgets/custom_text_field.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          const CustomAppBar(titleText: 'EditNotes',icon: Icons.check,),
          const SizedBox(height: 12,),
          CustomTextField(
            hintText: 'Title',
          ),
          const SizedBox(height: 16,),
          CustomTextField(
            hintText:'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
