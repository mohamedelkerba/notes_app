import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/cubit/add_notes_cubit/add_note_cubit.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int  currentIndex =0;
  List<Color > colors = const [
    Color(0xff395B64),
    Color(0xffE7F6F2),
    Color(0xffA5C9CA),
    Color(0xff2C3333),
    Color(0xff81E979),
    Color(0xff8FBB99),
  ];
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
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
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

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return isSelected ?  CircleAvatar(
      radius: 24,
     backgroundColor: Colors.white,
      child:  CircleAvatar(
        radius: 22,
        backgroundColor:color,

      ),
    ) :   CircleAvatar(
      radius: 22,
      backgroundColor: color,

    );
  }
}