import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio/Homepage/android/homepage_android.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android){
      return HomepageAndroid().HomeScreen(context);
    }
    else{
      return Text("Not Working");
    }
  }
}


