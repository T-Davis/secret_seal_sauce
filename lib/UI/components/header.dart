import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_seal_sauce/UI/pages/about_page.dart';
import 'package:secret_seal_sauce/UI/pages/directory_page.dart';
import 'package:secret_seal_sauce/UI/pages/home_page.dart';
import 'package:secret_seal_sauce/UI/pages/learn_more_page.dart';
import 'package:secret_seal_sauce/UI/pages/ocean_activities_page.dart';
import 'package:secret_seal_sauce/extensions/constraints_extensions.dart';
import 'package:secret_seal_sauce/logic/bloc/pages_bloc.dart';
import 'package:secret_seal_sauce/logic/models/app_page.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          SizedBox(height: 5),
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Spacer(),
                Flexible(
                  flex: 8,
                  child: Row(
                    children: [
                      LogoNavWidget(),
                      SizedBox(width: 20),
                      if (constraints.indicateLargeScreen) NavRailButtons(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (constraints.indicateLargeScreen)
                              FindASealButton(),
                            SizedBox(width: 20),
                            ReportASightingWidget(),
                            if (constraints.indicateSmallScreen)
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.menu),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Divider(color: Colors.blue),
        ],
      );
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(94);
}

class LogoNavWidget extends StatelessWidget {
  const LogoNavWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<PagesBloc>().add(PagesPush(AppPage(const HomePage())));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hawaiian',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Monk Seal',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class NavRailButtons extends StatelessWidget {
  const NavRailButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pagesBloc = BlocProvider.of<PagesBloc>(context);
    return Expanded(
      child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            TextButton(
              onPressed: () {
                pagesBloc.add(PagesPush(AppPage(HomePage())));
              },
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20), primary: Colors.black),
              child: const Text('Home'),
            ),
            TextButton(
              onPressed: () {
                pagesBloc.add(PagesPush(AppPage(LearnMorePage())));
              },
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20), primary: Colors.black),
              child: const Text('Learn More'),
            ),
            TextButton(
              onPressed: () {
                pagesBloc.add(PagesPush(AppPage(OceanActivitiesPage())));
              },
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20), primary: Colors.black),
              child: const Text('Ocean Activities'),
            ),
            TextButton(
              onPressed: () {
                pagesBloc.add(PagesPush(AppPage(AboutPage())));
              },
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20), primary: Colors.black),
              child: const Text('About'),
            ),
          ]),
    );
  }
}

class FindASealButton extends StatelessWidget {
  const FindASealButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        BlocProvider.of<PagesBloc>(context)
            .add(PagesPush(AppPage(DirectoryPage())));
      },
      style: TextButton.styleFrom(
          padding: EdgeInsets.all(20), backgroundColor: Colors.blue),
      child: const Text(
        'Find A Seal',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class ReportASightingWidget extends StatelessWidget {
  const ReportASightingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Report a sighting'),
            Text(
              '(888) 256-9840',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
