import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_seal_sauce/logic/bloc/pages_bloc.dart';
import 'package:secret_seal_sauce/logic/models/app_page.dart';

class CustomLink extends StatelessWidget {
  final String text;
  final Widget route;

  const CustomLink({Key? key, required this.text, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          BlocProvider.of<PagesBloc>(context).add(PagesPush(AppPage(route)));
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.blue.shade300),
        ));
  }
}
