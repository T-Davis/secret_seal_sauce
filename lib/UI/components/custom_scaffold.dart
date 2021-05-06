import 'package:flutter/material.dart';

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
              Row(
                children: [
                  Spacer(),
                  Flexible(
                      flex: 10,
                      child: Center(
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 1000),
                          child: content,
                        ),
                      )),
                  Spacer()
                ],
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
