import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:voter/login.dart';

import 'package:voter/mla_screen.dart';
//import 'package:leader/screens/login_screen.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Login',
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
        useMaterial3: true,
      ),
      //home: LoginScreen(),

      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
        padding: const EdgeInsets.only(top:180,left: 25,right: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(

              padding: EdgeInsets.all(20),
            ),
            child: Text('MLA',style: TextStyle(fontSize: 50)),
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>Mla()),
              );
            },
          ),
    ),
          Padding(
            padding: const EdgeInsets.only(left:25,right: 30,top: 25),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
            ),
            child: Text('MP',style: TextStyle(fontSize: 50)),
            onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=>MyLogin()),
              );
            },
          ),
        ),

            Padding(
              padding: const EdgeInsets.only(left:25,right: 30,top: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                ),
                child: Text('CM',style: TextStyle(fontSize: 50)),
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>MyLogin()),
                  );
                },
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left:25,right: 30,top: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                ),
                child: Text('PM',style: TextStyle(fontSize: 50)),
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>MyLogin()),
                  );
                },
              ),
            ),


      ]
    ),

      ),
    );
  }
}