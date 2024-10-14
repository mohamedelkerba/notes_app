import 'package:flutter/material.dart';

import '../../core/widgets/custom_text_field.dart';
import 'custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String ? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode:autoValidateMode ,
      child: Column(
        children: [
          CustomTextField(
            onSaved:(value){
              title = value;
            } ,
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved:(value){
              subTitle = value;
            } ,
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
