import 'package:flutter/material.dart';
import 'package:training/views/edit_note_view.dart';
import '../../core/widgets/default_text.dart';
import '../../style/colors/colors.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: notesItem,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: DefaultText(
                text: 'Flutter Tips',
                fontSize: 26,
                fontColor: Colors.black,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: DefaultText(
                  text: 'Build your app with mohamed gamal',
                  fontSize: 18,
                  fontColor: Colors.black.withOpacity(0.4),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: DefaultText(
                text: 'May 24 , 2024',
                fontSize: 14,
                fontColor: Colors.black.withOpacity(0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
