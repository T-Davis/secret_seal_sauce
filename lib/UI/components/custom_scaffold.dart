import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_width.dart';

import '../constants.dart';
import 'footer.dart';
import 'header.dart';

class CustomScaffold extends StatelessWidget {
  final Widget content;

  const CustomScaffold(this.content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlue,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              const Header(),
              CustomWidth(content),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
