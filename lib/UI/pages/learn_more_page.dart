import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_app_bar.dart';

class LearnMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Text(
          'Learn More',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
