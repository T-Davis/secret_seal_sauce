import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/footer.dart';
import 'package:secret_seal_sauce/UI/components/header.dart';

class LearnMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: Center(
                child: Text(
                  'Learn More',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
