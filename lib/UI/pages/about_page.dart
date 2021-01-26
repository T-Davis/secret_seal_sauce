import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_app_bar.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Text(
          'About',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
