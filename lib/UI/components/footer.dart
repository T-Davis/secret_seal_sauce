import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secret_seal_sauce/UI/constants.dart';
import 'package:secret_seal_sauce/UI/pages/learn_more_page.dart';
import 'package:secret_seal_sauce/logic/bloc/pages_bloc.dart';
import 'package:secret_seal_sauce/logic/models/app_page.dart';

double largeFont = 24;

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => (constraints.maxWidth < 650)
            ? FooterLayoutMobile()
            : FooterLayoutDesktop(),
      );
}

class FooterLayoutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LearnHow(),
        InPartnershipWith(),
        LinksAndSignUpMobile(),
      ],
    );
  }
}

class FooterLayoutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LearnHow(),
        InPartnershipWith(),
        LinksAndSignUpDesktop(),
      ],
    );
  }
}

class LearnHow extends StatelessWidget {
  const LearnHow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Learn how you can help the endangered Hawaiian Monk Seal',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontStyle: FontStyle.italic, fontSize: largeFont),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  BlocProvider.of<PagesBloc>(context)
                      .add(PagesPush(AppPage(LearnMorePage())));
                },
                child: Text('Protecting Seals'),
                style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(170, 32),
                    backgroundColor: kLightBlue,
                    alignment: Alignment.center),
              ),
              SizedBox(height: 40)
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class InPartnershipWith extends StatelessWidget {
  const InPartnershipWith({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightBlue,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
            child: Text(
              'In partnership with',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: largeFont,
                  color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 106,
                    height: 106,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/NOAA_logo.svg',
                    height: 100,
                    semanticsLabel: 'NOAA Logo',
                  ),
                ],
                alignment: Alignment.center,
              ),
              SizedBox(
                width: 50,
              ),
              SvgPicture.asset(
                'assets/images/TMMC_logo.svg',
                height: 70,
                color: Colors.white,
                semanticsLabel: 'TMMC Logo',
              ),
            ],
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}

class LinksAndSignUpDesktop extends StatelessWidget {
  const LinksAndSignUpDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkBlue,
      child: Row(
        children: [
          Flexible(child: Container()),
          Flexible(
            flex: 8,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FooterSiteMap(),
                    SizedBox(
                      height: 85,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(color: Colors.white),
                      ),
                    ),
                    FooterSocialMedia(),
                    SizedBox(
                      height: 85,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(color: Colors.white),
                      ),
                    ),
                    FooterSignUpDesktop(),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Attribution(),
                SizedBox(
                  height: 75,
                )
              ],
            ),
          ),
          Flexible(child: Container()),
        ],
      ),
    );
  }
}

class LinksAndSignUpMobile extends StatelessWidget {
  const LinksAndSignUpMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkBlue,
      child: Row(
        children: [
          Flexible(child: Container()),
          Flexible(
            flex: 8,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FooterSiteMap(),
                    SizedBox(
                      height: 85,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(color: Colors.white),
                      ),
                    ),
                    FooterSocialMedia(),
                    SizedBox(
                      height: 85,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                FooterSignUpMobile(),
                SizedBox(
                  height: 50,
                ),
                Attribution(),
                SizedBox(
                  height: 75,
                )
              ],
            ),
          ),
          Flexible(child: Container()),
        ],
      ),
    );
  }
}

class FooterSignUpDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '    Name',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            SizedBox(
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              width: 180,
              height: 27,
            ),
            SizedBox(
              width: 24,
            ),
            SizedBox(
              width: 200,
              child: Text(
                'Sign up for updates from the Marine Mammal Center',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          '    Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            SizedBox(
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              width: 180,
              height: 27,
            ),
            SizedBox(
              width: 24,
            ),
            OutlinedButton(
              onPressed: () => {},
              child: Text('Sign Up'),
              style: OutlinedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 11),
                  primary: Colors.white,
                  minimumSize: Size(130, 35),
                  backgroundColor: kLightBlue,
                  alignment: Alignment.center),
            ),
          ],
        ),
      ],
    );
  }
}

class FooterSignUpMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '    Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              width: 180,
              height: 27,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '    Email',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              width: 180,
              height: 27,
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          width: 200,
          child: Text(
            'Sign up for updates from the Marine Mammal Center',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        OutlinedButton(
          onPressed: () => {},
          child: Text('Sign Up'),
          style: OutlinedButton.styleFrom(
              textStyle: TextStyle(fontSize: 11),
              primary: Colors.white,
              minimumSize: Size(130, 35),
              backgroundColor: kLightBlue,
              alignment: Alignment.center),
        ),
      ],
    );
  }
}

class FooterSocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Social',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/images/Facebook_logo.svg',
              height: 22,
              semanticsLabel: 'Facebook Logo',
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            SvgPicture.asset(
              'assets/images/Instagram_logo.svg',
              height: 22,
              semanticsLabel: 'Instagram Logo',
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}

class FooterSiteMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FooterSiteMapButton(title: 'Home'),
        FooterSiteMapButton(title: 'Learn More'),
        FooterSiteMapButton(title: 'Ocean Activities'),
        FooterSiteMapButton(title: 'About'),
        FooterSiteMapButton(title: 'Find a Seal'),
      ],
    );
  }
}

class FooterSiteMapButton extends StatelessWidget {
  final String title;
  const FooterSiteMapButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w200,
        ),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
        padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
        minimumSize: Size(50, 25),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

class Attribution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: Container()),
        Flexible(
          flex: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/footer_seal.svg',
                height: 70,
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Text(
                  attributionText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              )
            ],
          ),
        ),
        Flexible(child: Container()),
      ],
    );
  }
}

const attributionText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit';
