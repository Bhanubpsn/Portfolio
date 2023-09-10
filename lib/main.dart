import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Homepage/homepage.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.red.shade300,
        statusBarBrightness: Brightness.light,
      )
  );
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ));
}


