import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

animationWidget({required String value,required Widget child,}){
  switch(value){
    case "1":
      {
        return SlideAnimation(
            verticalOffset: 500.0,
            child: child);
      }
    case "2":
      {
        return SlideAnimation(
            verticalOffset: -500.0,
            child: child);
      }
    case "3":
      {
        return SlideAnimation(
            horizontalOffset: 500.0,
            child: child);
      }
    case "4":
      {
        return  SlideAnimation(
            horizontalOffset: -500.0,
            child: child);
      }
    case "5":
      {
        return  ScaleAnimation(
            child: child);
      }
    case "6":
      {
        return  FlipAnimation(
            child: child);
      }
    case "7":
      {
        return  FlipAnimation(
            flipAxis: FlipAxis.y,
            child: child);
      }
    case "8":
      {
        return  FadeInAnimation(
          duration: const Duration(milliseconds: 100),
            child: child);
      }
    case "9":
      {
        return  ScaleAnimation(
            child: child);
      }

    default:{
      return  ScaleAnimation(
          child: child);
    }
  }
}