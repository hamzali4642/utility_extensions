import 'package:flutter/material.dart';

bool validateFields(List<TextEditingController> controllers){
  for(var controller in controllers){
    if(controller.text.trim().isEmpty){
      return false;
    }
  }
  return true;
}