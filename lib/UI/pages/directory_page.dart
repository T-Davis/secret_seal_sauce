import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/footer.dart';
import 'package:secret_seal_sauce/UI/components/header.dart';

const String _longText =
    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos';
const String _shortText =
    'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos';

const String _multiLineText = '''
aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
''';

class DirectoryPage extends StatelessWidget {
  const DirectoryPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const CustomAppBar(),
            Row(
              children: [
                Spacer(),
                Flexible(
                    flex: 10,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          _longText,
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Be Respectful',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
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
                          ),
                          SealTag(
                            leftPosition: 50,
                            topPosition: 250,
                            tag: 'Scars',
                          ),
                          SealTag(
                            leftPosition: 304,
                            topPosition: 0,
                            tag: 'By Island',
                          ),
                          SealTag(
                            leftPosition: 544,
                            topPosition: 80,
                            tag: 'Bleach Number',
                          ),
                          SealTag(
                            leftPosition: 580,
                            topPosition: 254,
                            tag: 'Tag Number',
                          ),
                          GestureDetector(
                            onTapUp: (TapUpDetails details) =>
                                print(details.localPosition),
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
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(_longText),
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
                                    text: '             $_shortText',
                                  ),
                                  HowToIDSection(
                                    title: 'Tags',
                                    text: '          $_shortText',
                                  ),
                                  HowToIDSection(
                                    title: 'Natual Bleach Marks',
                                    text:
                                        '                                      $_shortText',
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
                                    text: '            $_shortText',
                                  ),
                                  HowToIDSection(
                                    title: 'Bleach Number',
                                    text:
                                        '                             $_shortText',
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
                          '$_shortText $_shortText',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(_longText),
                        SizedBox(
                          height: 12,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(_multiLineText),
                        ]),
                        Text(_shortText),
                        SizedBox(
                          height: 12,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text('$_multiLineText$_multiLineText'),
                        ]),
                        Text(_shortText),
                        SizedBox(
                          height: 60,
                        ),
                        DirectoryDivider()
                      ],
                    )),
                Spacer()
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class SealTag extends StatelessWidget {
  final double leftPosition;
  final double topPosition;
  final String tag;

  const SealTag(
      {Key? key,
      required this.leftPosition,
      required this.topPosition,
      required this.tag})
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
                onPressed: () {},
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

  const HowToIDSection({Key? key, required this.title, required this.text})
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
        TextButton(
            onPressed: () {},
            child: Text(
              'Learn about the Islands',
              style: TextStyle(color: Colors.blue.shade300),
            )),
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
