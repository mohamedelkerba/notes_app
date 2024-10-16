import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/cubit/notes_cubit/notes_cubit.dart';
import 'package:training/models/note_model.dart';
import 'package:training/views/widgets/note_container.dart';
import 'package:training/views/widgets/swipe_action_background.dart';
import '../../core/widgets/delete_dialog.dart';
import '../edit_note_view.dart';

class NoteItem extends StatefulWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  _NoteItemState createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  bool _isBeingDragged = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EditNoteView(note: widget.note);
          }),
        );
      },
      child: Dismissible(
        key: Key(widget.note.key.toString()),
        direction: DismissDirection.horizontal,
        confirmDismiss: _confirmDismissAction,
        onDismissed: _handleDismiss,
        onUpdate: _handleDragUpdate,
        background: const SwipeActionBackground(
          alignment: Alignment.centerLeft,
          color: Colors.green,
          icon: Icons.check,
        ),
        secondaryBackground: const SwipeActionBackground(
          alignment: Alignment.centerRight,
          color: Colors.red,
          assetPath: 'assets/images/delete_icon.svg',
        ),
        child: NoteContainer(note: widget.note,),
      ),
    );
  }




  Future<bool?> _confirmDismissAction(DismissDirection direction) async {
    if (direction == DismissDirection.endToStart) {
      return await _showDeleteConfirmationDialog(context);
    } else if (direction == DismissDirection.startToEnd) {
      setState(() {
        widget.note.isCompleted = !widget.note.isCompleted;
        widget.note.save();
      });
      return false;
    }
    return false;
  }

  void _handleDismiss(DismissDirection direction) {
    if (direction == DismissDirection.endToStart) {
      widget.note.delete();
      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    }
  }

  void _handleDragUpdate(DismissUpdateDetails details) {
    setState(() {
      _isBeingDragged = details.reached && details.progress > 0;
    });
  }

  Future<bool?> _showDeleteConfirmationDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return DeleteConfirmationDialog();
      },
    );
  }
}



