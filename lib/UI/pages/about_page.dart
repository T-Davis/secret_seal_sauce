import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      AboutPageContent(),
    );
  }
}

class AboutPageContent extends StatelessWidget {
  const AboutPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Center(
        child: Text(
          'About',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
