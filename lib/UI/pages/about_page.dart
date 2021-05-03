import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/header.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
        child: Text(
          'About',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
