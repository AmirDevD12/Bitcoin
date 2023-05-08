

import 'package:flutter/material.dart';
import 'package:logincorsa/SignUp.dart';
import 'package:provider/provider.dart';
import 'Providers/visibiliti.dart';
import 'Providers/UserDataProvider.dart';

void main() {
  runApp(   MultiProvider(
    providers: [


      ChangeNotifierProvider(create: (context) => UserDataProvider()),
      ChangeNotifierProvider(create: (context) =>PasswordFieldModel()),

    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body:SignUpScreen() ,
    ),



    );
  }
}

