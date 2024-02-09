import 'package:flutter/material.dart';

appBarColor(String value){
  switch(value){
    case "2":
      {
        return Colors.red;
      }
    case "8":
      {
        return Colors.blue;
      }
    case "6":
      {
        return Colors.teal;
      }
    case "5":
      {
        return Colors.brown;
      }
    case "3":
      {
        return Colors.pink;
      }
    case "1":
      {
        return Colors.cyan;
      }
    case "9":
      {
        return Colors.purple;
      }
    case "4":
      {
        return Colors.yellow;
      }
    case "7":
      {
        return Colors.blue;
      }

    default:{
      return Colors.white;
    }
  }
}