import 'package:flutter/material.dart';
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
                height: 35,
              ),
              Text(
                'Learn how you can help the endangered Hawaiian Monk Seal',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontStyle: FontStyle.italic, fontSize: largeFont),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 35),
                child: OutlinedButton(
                  onPressed: () => {},
                  child: Text('Protecting Seals'),
                  style: OutlinedButton.styleFrom(minimumSize: Size(30, 15)),
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
      color: klightBlue,
      child: Column(
        children: [
          Text(
            'In partnership with',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: largeFont,
                color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('NOAA logo'),
              Text('TMMC logo'),
            ],
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
              FooterSiteMap(),
              Container(
                height: 100,
                child: VerticalDivider(color: Colors.white),
              ),
              FooterSocialMedia(),
              Container(
                height: 100,
                child: VerticalDivider(color: Colors.white),
              ),
              FooterSignUp()
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Social'),
        Row(
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
      children: [
        ButtonWrapper(),
        TextButton(
          onPressed: () => {},
          child: Text(
            'Learn More',
            style: TextStyle(fontSize: 8),
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Text(
            'Ocean Activities',
            style: TextStyle(fontSize: 8),
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Text(
            'About',
            style: TextStyle(fontSize: 8),
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Text(
            'Find A Seal',
            style: TextStyle(fontSize: 8),
          ),
        ),
      ],
    );
  }
}

class ButtonWrapper extends StatelessWidget {
  const ButtonWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: Text(
        'Home',
        style: TextStyle(fontSize: 8),
      ),
    );
  }
}
