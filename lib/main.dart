
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:voter/login.dart';
import 'package:voter/phone.dart';
import 'package:voter/register.dart';
import 'package:voter/verify.dart';

import 'home.dart';
import 'home_screen.dart';
import 'mla_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes:{
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'login':(context)=>MyLogin(),
      'register': (context) => MyRegister(),
      'home':(context)=>MyHome(),
      'mlascreen':(context)=>Mla(),
    },
  ));
}

