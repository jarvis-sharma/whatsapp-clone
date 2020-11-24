import 'package:flutter/material.dart';
import 'package:third/status.dart';
import 'package:third/chats.dart';
import 'package:third/calls.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/chats',
      routes: {
        '/chats': (context) => Chats(),
        '/status': (context) => Status(),
        '/calls': (context) => Calls(),
      },
    );
  }
}
