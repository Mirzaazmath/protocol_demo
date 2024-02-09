import 'package:flutter/material.dart';

tileColor(String value){
  switch(value){
    case "1":
      {
        return Colors.blue.shade50;
      }
    case "2":
      {
        return Colors.red.shade50;
      }
    case "3":
      {
        return Colors.cyan.shade50;
      }
    case "4":
      {
        return Colors.pink.shade50;
      }
    case "5":
      {
        return Colors.orange.shade50;
      }
    case "6":
      {
        return Colors.purple.shade50;
      }
    case "7":
      {
        return Colors.green.shade50;
      }
    case "8":
      {
        return Colors.teal.shade50;
      }
    case "9":
      {
        return Colors.yellow.shade50;
      }

    default:{
      return Colors.white;
    }
  }
}