import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      HomePageContent(),
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/hero_image.png',
        width: MediaQuery.of(context).size.width * .8,
        fit: BoxFit.fill,
      ),
    );
  }
}
