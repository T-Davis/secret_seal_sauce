import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/constants.dart';

double largeFont = 24;

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlexedDivider(),
        LearnHowYouCanHelp(),
        InPartnershipWith(),
        LinksAndSignUp()
      ],
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
              FooterNavigation(),
              Container(
                height: 100,
                child: VerticalDivider(color: Colors.white),
              ),
              SocialMediaNavigation(),
              Container(
                height: 100,
                child: VerticalDivider(color: Colors.white),
              ),
              NewsLetterSignUp()
            ],
          )
        ],
      ),
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

class LearnHowYouCanHelp extends StatelessWidget {
  const LearnHowYouCanHelp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Learn how you can help the endangered Hawaiian Monk Seal',
            style: TextStyle(fontSize: largeFont),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: OutlinedButton(
            onPressed: () => {},
            child: Text('Protecting Seals'),
          ),
        ),
      ],
    );
  }
}

class FlexedDivider extends StatelessWidget {
  const FlexedDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Flexible(
          flex: 8,
          child: Divider(
            height: 120,
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class NewsLetterSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 150,
          child: Column(
            children: [
              Text('Name'),
              TextField(),
              Text('Email'),
              TextField(),
            ],
          ),
        ),
        Column(
          children: [
            Text('Sign up for updates form the Marine Mammal Center'),
            OutlinedButton(
              onPressed: () => {},
              child: Text('Sign Up'),
            )
          ],
        )
      ],
    );
  }
}

class SocialMediaNavigation extends StatelessWidget {
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

class FooterNavigation extends StatelessWidget {
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
