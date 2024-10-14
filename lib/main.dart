import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: const NotesView(),
    );
  }
}