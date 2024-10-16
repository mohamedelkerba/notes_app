import 'package:flutter/material.dart';
import '../../core/widgets/default_text.dart';
import 'package:training/models/note_model.dart';

class NoteContainer extends StatelessWidget {
  final NoteModel note;
  final bool isBeingDragged;

  const NoteContainer({
    super.key,
    required this.note,
    this.isBeingDragged = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: isBeingDragged
            ? const BorderRadius.horizontal(left: Radius.circular(12))
            : BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          NoteContent(note: note),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: DefaultText(
              text: note.date,
              fontSize: 14,
              fontColor: note.isCompleted
                  ? Colors.grey.withOpacity(0.6)
                  : Colors.black.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
class NoteContent extends StatelessWidget {
  const NoteContent({
    Key? key,
    required this.note,
  }) : super(key: key);

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: DefaultText(
        text: note.title,
        fontSize: 26,
        fontColor: note.isCompleted ? Colors.grey : Colors.black,
        textDecoration: note.isCompleted
            ? TextDecoration.lineThrough
            : TextDecoration.none,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16),
        child: DefaultText(
          text: note.subTitle,
          fontSize: 18,
          fontColor: note.isCompleted
              ? Colors.grey.withOpacity(0.6)
              : Colors.black.withOpacity(0.4),
          textDecoration: note.isCompleted
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
    );
  }
}
