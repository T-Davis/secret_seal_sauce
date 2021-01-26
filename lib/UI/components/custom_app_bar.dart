import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_seal_sauce/UI/pages/about_page.dart';
import 'package:secret_seal_sauce/UI/pages/find_a_seal_page.dart';
import 'package:secret_seal_sauce/UI/pages/home_page.dart';
import 'package:secret_seal_sauce/UI/pages/learn_more_page.dart';
import 'package:secret_seal_sauce/UI/pages/ocean_activities_page.dart';
import 'package:secret_seal_sauce/logic/bloc/pages_bloc.dart';
import 'package:secret_seal_sauce/logic/models/app_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(child: Container()),
            Flexible(
              flex: 8,
              child: Row(
                children: [
                  LogoNavWidget(),
                  NavRailButtons(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FindASealButton(),
                        SizedBox(
                          width: 20,
                        ),
                        ReportASightingWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(child: Container()),
          ],
        ),
        Divider(
          color: Colors.blue,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(74);
}

class LogoNavWidget extends StatelessWidget {
  const LogoNavWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(8),
      onPressed: () {
        context.read<PagesBloc>().add(PagesPush(AppPage(const HomePage())));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
    return Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
      FlatButton(
        onPressed: () {
          pagesBloc.add(PagesPush(AppPage(HomePage())));
        },
        child: const Text('Home'),
      ),
      FlatButton(
        onPressed: () {
          pagesBloc.add(PagesPush(AppPage(LearnMorePage())));
        },
        child: const Text('Learn More'),
      ),
      FlatButton(
        onPressed: () {
          pagesBloc.add(PagesPush(AppPage(OceanActivitiesPage())));
        },
        child: const Text('Ocean Activities'),
      ),
      FlatButton(
        onPressed: () {
          pagesBloc.add(PagesPush(AppPage(AboutPage())));
        },
        child: const Text('About'),
      ),
    ]);
  }
}

class FindASealButton extends StatelessWidget {
  const FindASealButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.blue,
      onPressed: () {
        BlocProvider.of<PagesBloc>(context)
            .add(PagesPush(AppPage(FindASealPage())));
      },
      child: const Text(
        'Find A Seal',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

// class ReportASightingWidget extends StatelessWidget {
//   const ReportASightingWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Text('Report a sighting'),
//         Text(
//           '(888) 256-9840',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }

class ReportASightingWidget extends StatelessWidget {
  const ReportASightingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: EdgeInsets.all(8),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
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
