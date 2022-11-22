import 'dart:ui';
import 'package:apprentissage/screens/Guest.dart';
import 'package:apprentissage/screens/guest/Reg.dart';
import 'package:apprentissage/screens/guest/auth.dart';
import 'package:apprentissage/screens/guest/Products.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // ignore: prefer_const_constructors
      home: GuestScreens(),
    );
  }
}
