import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          'assets/images/hero_image.png',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}
