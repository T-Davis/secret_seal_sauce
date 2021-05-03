import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/footer.dart';
import 'package:secret_seal_sauce/UI/components/header.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Header(),
            Center(
              child: Image.asset(
                'assets/images/hero_image.png',
                width: MediaQuery.of(context).size.width * .8,
                fit: BoxFit.fill,
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
