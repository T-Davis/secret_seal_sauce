import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/widgets/home_page.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Seal Sauce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage('Hello, Monk Seals!'),
    );
  }
}
