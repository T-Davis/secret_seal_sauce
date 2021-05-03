import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/footer.dart';
import 'package:secret_seal_sauce/UI/components/header.dart';

class OceanActivitiesPage extends StatelessWidget {
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
                  'Ocean Activities',
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
