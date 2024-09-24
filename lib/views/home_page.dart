import 'package:flutter/material.dart';
import 'package:training/core/widgets/default_text.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: DefaultText(
          text: 'Notes',
          fontColor: Colors.white,
        ),
        elevation: 1,
      ),
      body: Container(),
    );
  }
}
