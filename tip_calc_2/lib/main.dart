// This is the main page of the app. It will be used to display the U-Tip app's main content.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());  //Const used to improve the performance of the app by making it immutable.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //to remove the debug banner from the top right corner
      // title of the app
      title: 'U-Tip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: const UTip() // Set the home to the U-Tip widget
    );
  }
}

// Created Stateful Widget Next by writing stl
class UTip extends StatefulWidget {
  const UTip({super.key});

  @override
  State<UTip> createState() => _UTipState();
}

class _UTipState extends State<UTip> { 
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();  // This tag will create a black screen with a placeholder widget and create cross axis alignment
    return Scaffold(
      appBar: AppBar(
        title: const Text('U-Tip'), //title of the app bar
        // leading: Text("Hello"),
      ),
      body: Text("Hello World"), //body of the app
      // backgroundColor: Colors.red, //background color of the app
    ); //placeholder with create black screen 
  }
}

