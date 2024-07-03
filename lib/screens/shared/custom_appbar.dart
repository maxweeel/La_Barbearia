import 'package:flutter/material.dart';

AppBar customAppBar(String appTitle) {
  return AppBar(
    title: Text(appTitle, textAlign: TextAlign.center,),
    
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.message),
      ),
      
    ],
    
  );
}
