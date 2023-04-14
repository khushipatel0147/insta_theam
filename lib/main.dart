import 'package:flutter/material.dart';
import 'package:insta_theam/Screen/Home.dart';
import 'package:insta_theam/Screen/profileScreen.dart';
import 'package:insta_theam/Screen/uploadScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        '/':(context) => Insta(),
        'profile':(context) => Profile(),
        'upload':(context) => Upload(),
     },
    )
  );
}

