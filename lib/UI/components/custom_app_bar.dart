import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_seal_sauce/UI/pages/find_a_seal_page.dart';
import 'package:secret_seal_sauce/UI/pages/home_page.dart';
import 'package:secret_seal_sauce/UI/pages/learn_page.dart';
import 'package:secret_seal_sauce/UI/pages/ocean_activities_page.dart';
import 'package:secret_seal_sauce/UI/pages/who_we_are_page.dart';
import 'package:secret_seal_sauce/logic/bloc/pages_bloc.dart';
import 'package:secret_seal_sauce/logic/models/app_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar();

  @override
  Widget build(BuildContext context) {
    final pagesBloc = BlocProvider.of<PagesBloc>(context);
    return AppBar(
      title: FlatButton(
        onPressed: () {
          // pagesBloc.add(PagesPush(AppPage(HomePage())));
          context.read<PagesBloc>().add(PagesPush(AppPage(HomePage())));
        },
        child: const Text(
          'Hawaii Seals',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        FlatButton(
          onPressed: () {
            pagesBloc.add(PagesPush(AppPage(LearnPage())));
          },
          child: const Text('Learn'),
        ),
        FlatButton(
          onPressed: () {
            pagesBloc.add(PagesPush(AppPage(FindASealPage())));
          },
          child: const Text('Find a Seal'),
        ),
        FlatButton(
          onPressed: () {
            pagesBloc.add(PagesPush(AppPage(OceanActivitiesPage())));
          },
          child: const Text('Ocean Activities'),
        ),
        FlatButton(
          onPressed: () {
            pagesBloc.add(PagesPush(AppPage(WhoWeArePage())));
          },
          child: const Text('Who We Are'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
