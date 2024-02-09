import 'package:flutter/material.dart';
class FieldWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const FieldWidget({super.key,required this.title,required this.controller});
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      maxLength: 5,
        controller: controller,
        keyboardType: TextInputType.number,
        decoration:  InputDecoration(
          contentPadding:const  EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            hintText: title,
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(40)
            ),


        ),
      );

  }
}