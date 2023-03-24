import 'package:flutter/material.dart';
import 'package:pert3slice/pages/get_started_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hallodoc',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const GetStartedPage(),
      );
      }
}