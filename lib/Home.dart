import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseMessaging _messaging = FirebaseMessaging();
  String tok;

  @override
  void initState() {
    super.initState();

    _messaging.getToken().then((token) {
      print("your token is " + token);
      setState(() {
        tok = token;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My pushing notification"),
      ),
      body: Center(
        child: Text(tok),
      ),
    );
  }
}
