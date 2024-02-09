import 'package:flutter/material.dart';

textColor(String value){
  switch(value){
    case "1":
      {
        return Colors.red;
      }
    case "2":
      {
        return Colors.blue;
      }
    case "3":
      {
        return Colors.teal;
      }
    case "4":
      {
        return Colors.blue;
      }
    case "5":
      {
        return Colors.red;
      }
    case "6":
      {
        return Colors.cyan;
      }
    case "7":
      {
        return Colors.purple;
      }
    case "8":
      {
        return Colors.yellow;
      }
    case "9":
      {
        return Colors.blue;
      }

    default:{
      return Colors.black;
    }
  }
}