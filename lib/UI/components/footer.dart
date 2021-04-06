import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secret_seal_sauce/UI/constants.dart';

double largeFont = 24;

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LearnHow(),
        InPartnershipWith(),
        LinksAndSignUp(),
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
        Flexible(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                child: OutlinedButton(
                  onPressed: () => {},
                  child: Text('Protecting Seals'),
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(170, 32),
                      backgroundColor: kLightBlue,
                      alignment: Alignment.center),
                ),
              ),
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

class LinksAndSignUp extends StatelessWidget {
  const LinksAndSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkBlue,
      child: Column(
        children: [
          Row(
            children: [
              Flexible(child: Container()),
              Flexible(
                flex: 8,
                child: Row(
                  children: [
                    FooterSiteMap(),
                    SizedBox(
                      height: 65,
                      width: 50,
                      child: VerticalDivider(color: Colors.white),
                    ),
                    FooterSocialMedia(),
                    SizedBox(
                      height: 65,
                      width: 50,
                      child: VerticalDivider(color: Colors.white),
                    ),
                    FooterSignUp(),
                  ],
                ),
              ),
              Flexible(child: Container()),
            ],
          )
        ],
      ),
    );
  }
}

class FooterSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name'),
        Row(
          children: [
            SizedBox(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              width: 150,
            ),
            Text('Sign up for updates from the Marine Mammal Center'),
          ],
        ),
        Text('Email'),
        Row(
          children: [
            SizedBox(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              width: 150,
            ),
            OutlinedButton(
              onPressed: () => {},
              child: Text('Sign Up'),
            ),
          ],
        )
      ],
    );
  }
}

class FooterSocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Social'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(icon: Icon(Icons.add), onPressed: () => {}),
            IconButton(icon: Icon(Icons.dashboard), onPressed: () => {})
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
          fontSize: 11,
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
