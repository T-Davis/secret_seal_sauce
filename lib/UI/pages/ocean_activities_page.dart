import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';

class OceanActivitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      OceanActivitiesPageContent(),
    );
  }
}

class OceanActivitiesPageContent extends StatelessWidget {
  const OceanActivitiesPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Center(
        child: Text(
          'Ocean Activities',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
