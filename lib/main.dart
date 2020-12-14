import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/widgets/components/custom_app_bar.dart';
import 'package:secret_seal_sauce/widgets/screens/home_page.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Seal Sauce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: CustomAppBar(),
        body: HomePage(),
      ),
    );
  }
}
