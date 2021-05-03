import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/header.dart';

class OceanActivitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
        child: Text(
          'Ocean activities',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
