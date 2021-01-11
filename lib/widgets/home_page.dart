import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final text;
  HomePage(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Secret Seal Sauce'),
        ),
        body: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.blue, fontSize: 40.0),
          ),
        ));
  }
}
