import 'package:flutter/material.dart';
/// This Class is for all Types of text
class TextUtil extends StatelessWidget {
  final  String text;
  final  Color? color;
  final  double? size;
  final  bool? weight;
  final int? length;
  const   TextUtil({super.key,required this.text,this.size,this.color,this.weight,this.length});

  @override
  Widget build(BuildContext context) {
    return  Text(text,

      style: TextStyle(color:color?? Colors.black,fontSize:size?? 18,
          fontWeight:weight==null?FontWeight.w500: FontWeight.w700,fontFamily: "Poppins"
      ),
      maxLines:length?? 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}