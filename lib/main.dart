import 'package:flutter/material.dart';
import 'package:test/home.dart';

void main(){
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true
    ),
    home: const HomeScreen(),
  ),);
}

