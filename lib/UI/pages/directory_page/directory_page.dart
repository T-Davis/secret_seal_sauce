import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_seal_sauce/UI/components/custom_link.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';
import 'package:secret_seal_sauce/UI/pages/bleach_numbers_page.dart';
import 'package:secret_seal_sauce/UI/pages/directory_page/directory_page_copy.dart';
import 'package:secret_seal_sauce/UI/pages/islands_page.dart';
import 'package:secret_seal_sauce/UI/pages/natural_bleaching_page.dart';
import 'package:secret_seal_sauce/UI/pages/scarring_page.dart';
import 'package:secret_seal_sauce/UI/pages/tags_page.dart';
import 'package:secret_seal_sauce/logic/bloc/pages_bloc.dart';
import 'package:secret_seal_sauce/logic/models/app_page.dart';

class DirectoryPage extends StatelessWidget {
  const DirectoryPage();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      DirectoryPageContent(),
    );
  }
}

class DirectoryPageContent extends StatelessWidget {
  const DirectoryPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          areYouExcited,
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 35,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Be Respectful',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            ImageWithText(
              image: 'swim',
              title: "Don't swim",
              subtext1: "If you're in the ocean,",
              subtext2: "cautiously exit the water.",
            ),
            ImageWithText(
              image: 'seal',
              title: "Keep Distance",
              subtext1: "About 50 feet, in",
              subtext2: "the water or on land.",
            ),
            ImageWithText(
              image: 'dog',
              title: "Leash Your Dog",
              subtext1: "Seals can transmit disease",
              subtext2: "or injure your dog.",
            ),
            ImageWithText(
              image: 'hamburger',
              title: "Never Feed",
              subtext1: "Feeding a seal can cause",
              subtext2: "more harm than good.",
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        DirectoryDivider(),
        SizedBox(
          height: 40,
        ),
        Stack(children: [
          SealTag(
            leftPosition: 46,
            topPosition: 48,
            tag: 'Natural Bleach',
            route: NatualBleachingPage(),
          ),
          SealTag(
            leftPosition: 50,
            topPosition: 250,
            tag: 'Scars',
            route: ScarringPage(),
          ),
          SealTag(
            leftPosition: 304,
            topPosition: 0,
            tag: 'By Island',
            route: IslandsPage(),
          ),
          SealTag(
            leftPosition: 544,
            topPosition: 80,
            tag: 'Bleach Number',
            route: BleachNumbersPage(),
          ),
          SealTag(
            leftPosition: 580,
            topPosition: 254,
            tag: 'Tag Number',
            route: TagsPage(),
          ),
          GestureDetector(
            onTapUp: (TapUpDetails details) => print(details.localPosition),
            child: SizedBox(
              height: 380,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/seal_with_labels.png',
                  height: 320,
                ),
              ),
            ),
          ),
        ]),
        SizedBox(
          height: 50,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'How to ID a seal',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: 10,
        ),
        Text(howToID),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HowToIDSection(
                    title: 'Island',
                    text: '             $island',
                    linkText: 'Learn about the Islands',
                    route: IslandsPage(),
                  ),
                  HowToIDSection(
                    title: 'Tags',
                    text: '          $tags',
                    linkText: 'Learn about Tagging',
                    route: TagsPage(),
                  ),
                  HowToIDSection(
                    title: 'Natual Bleach Marks',
                    text:
                        '                                      $naturalBleach',
                    linkText: 'Learn about Natural Bleach',
                    route: NatualBleachingPage(),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HowToIDSection(
                    title: 'Scars',
                    text: '            $scars',
                    linkText: 'Learn about Scarring',
                    route: ScarringPage(),
                  ),
                  HowToIDSection(
                    title: 'Bleach Number',
                    text: '                             $bleachNumber',
                    linkText: 'Learn about Bleach Numbers',
                    route: BleachNumbersPage(),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        DirectoryDivider(),
        SizedBox(height: 60),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Why do NOAA scientists have to identify seals',
              style: TextStyle(fontSize: 24),
            )),
        SizedBox(height: 16),
        Text(
          theHawaiianMonk,
          style: TextStyle(fontSize: 17),
        ),
        SizedBox(
          height: 16,
        ),
        Text(withOnlyAbout),
        // SizedBox(
        //   height: 12,
        // ),
        // Row(children: [
        //   SizedBox(
        //     width: 30,
        //   ),
        //   Text(_multiLineText),
        // ]),
        // Text(_shortText),
        // SizedBox(
        //   height: 12,
        // ),
        // Row(children: [
        //   SizedBox(
        //     width: 30,
        //   ),
        //   Text('$_multiLineText$_multiLineText'),
        // ]),
        // Text(_shortText),
        SizedBox(
          height: 60,
        ),
        DirectoryDivider()
      ],
    );
  }
}

class SealTag extends StatelessWidget {
  final double leftPosition;
  final double topPosition;
  final String tag;
  final Widget route;

  const SealTag(
      {Key? key,
      required this.leftPosition,
      required this.topPosition,
      required this.tag,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: leftPosition,
        top: topPosition,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tag,
              style: TextStyle(fontSize: 22),
            ),
            TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                onPressed: () {
                  BlocProvider.of<PagesBloc>(context)
                      .add(PagesPush(AppPage(route)));
                },
                child: Row(
                  children: [
                    Text(
                      'Search  ',
                      style:
                          TextStyle(color: Colors.blue.shade300, fontSize: 15),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: Colors.blue.shade300,
                    )
                  ],
                ))
          ],
        ));
  }
}

class HowToIDSection extends StatelessWidget {
  final String title;
  final String text;
  final String linkText;
  final Widget route;

  const HowToIDSection(
      {Key? key,
      required this.title,
      required this.text,
      required this.linkText,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Text(
              '$title.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(text)
          ],
        ),
        SizedBox(
          height: 5,
        ),
        CustomLink(text: linkText, route: route),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class DirectoryDivider extends StatelessWidget {
  const DirectoryDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(thickness: 5, color: Colors.blue.shade100);
  }
}

class ImageWithText extends StatelessWidget {
  final String image;
  final String title;
  final String subtext1;
  final String subtext2;

  const ImageWithText(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtext1,
      required this.subtext2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/$image.png',
            height: 66,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            subtext1,
          ),
          Text(
            subtext2,
          )
        ],
      ),
    );
  }
}
