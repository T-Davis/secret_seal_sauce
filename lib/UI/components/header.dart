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
                  SizedBox(width: 20),
                  NavRailButtons(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FindASealButton(),
                        SizedBox(width: 20),
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
    return TextButton(
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
    ]);
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
            .add(PagesPush(AppPage(FindASealPage())));
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
    return TextButton(
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
