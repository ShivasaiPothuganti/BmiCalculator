
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'inputPage.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF0A0E21),
          scaffoldBackgroundColor: Color(0XFF0A0E21),
        ),
        home:InputPage()
    );
  } 
}

