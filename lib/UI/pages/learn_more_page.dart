import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';

class LearnMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      LearnMorePageContent(),
    );
  }
}

class LearnMorePageContent extends StatelessWidget {
  const LearnMorePageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Center(
        child: Text(
          'Learn More',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
