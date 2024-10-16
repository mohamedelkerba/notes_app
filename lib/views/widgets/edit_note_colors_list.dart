import 'package:flutter/material.dart';

import '../../models/note_model.dart';
import 'colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {

  late int currentIndex ;
  List<Color > colors = const [
    Color(0xff395B64),
    Color(0xffE7F6F2),
    Color(0xffA5C9CA),
    Color(0xff2C3333),
    Color(0xff81E979),
    Color(0xff8FBB99),
  ];
   @override
  void initState() {
     currentIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 6.0),
            child:  GestureDetector(
                onTap: (){
                  currentIndex = index;
                  widget.note.color=colors[index].value;
                  setState(() {

                  });
                } ,
                child: ColorItem(
                  isSelected: currentIndex == index,
                  color: colors[index],
                )
            ),
          );
        },
      ),
    );
  }
}