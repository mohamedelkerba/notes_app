import 'package:flutter/material.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/default_text.dart';
import '../../style/colors/colors.dart';

class AddNoteBottomSheet extends StatelessWidget {
   AddNoteBottomSheet({super.key});

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children:   [
            CustomTextField(
              hintText: 'Title',
            ),
            const SizedBox(height: 16,),
            CustomTextField(
                hintText:'Content',
              maxLines: 5,
            ),
            const SizedBox(height: 50,),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: addNoteColor
                ),
                child: Center(child: DefaultText(text: 'Add',
                fontSize: 18,
                  fontColor: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
              ),
            const SizedBox(height: 16,),
        
        
          ],
        ),
      ),
    );
  }
}

