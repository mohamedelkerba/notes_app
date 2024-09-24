import 'package:flutter/material.dart';
import 'package:training/views/widgets/add_note_bottom_sheet.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const NotesViewBody(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              backgroundColor: Colors.black,
              context: context,
              builder: (context) {
               return AddNoteBottomSheet();
              }
          );
        },
        child:Icon(Icons.add),


      ),
    );
  }
}

