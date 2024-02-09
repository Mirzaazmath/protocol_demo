import 'package:flutter/material.dart';

import '../../../utils/text_utils.dart';
class ColorBtn extends StatelessWidget {
  final String title;
  final double? width;
  final Color? color;
  final  VoidCallback onTap;
  const ColorBtn({super.key,required this.title, required this.onTap,this.width,this.color});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      width:width?? double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue
          ),
          onPressed: onTap,
          child: TextUtil(text: title,color: Colors.white,size: 14,)),
    );

  }
}