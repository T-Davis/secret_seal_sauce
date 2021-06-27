import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';
import 'package:secret_seal_sauce/logic/models/seal.dart';

class SealProfilePage extends StatelessWidget {
  final Seal seal;

  const SealProfilePage(this.seal);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      SealProfilePageContent(seal: seal),
    );
  }
}

class SealProfilePageContent extends StatelessWidget {
  const SealProfilePageContent({
    Key? key,
    required this.seal,
  }) : super(key: key);

  final Seal seal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Spacer(),
            Flexible(
              flex: 5,
              child: Column(
                children: [
                  FutureBuilder(
                      future: FirebaseStorage.instance
                          .ref(seal.photos.first.photoPath800x800)
                          .getDownloadURL(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Image.network(snapshot.data! as String);
                        } else {
                          return const CircularProgressIndicator();
                        }
                      }),
                ],
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          tagText('Name'),
                          nameAndIDText(seal.name),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          tagText('ID'),
                          nameAndIDText(seal.id),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  divider(),
                  tagText('Scarring'),
                  if (seal.scars.isEmpty) contentText('none'),
                  for (final scar in seal.scars) contentText(scar),
                  verticalBox(),
                  tagText('Bleach Marks'),
                  if (seal.bleaching.isEmpty) contentText('none'),
                  for (final bleach in seal.bleaching) contentText(bleach),
                  verticalBox(),
                  tagText('Sighting Locations'),
                  if (seal.sightings.isEmpty) contentText('unknown'),
                  for (final sighting in seal.sightings) contentText(sighting),
                  verticalBox(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          tagText('Last Tag Number'),
                          Row(
                            children: [
                              contentText('A125'),
                              Icon(
                                Icons.turned_in,
                                color: Colors.red,
                              )
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          tagText('Last Bleach Number'),
                          contentText('N17 (Dec. 2019)'),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  divider(),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          tagText('Age'),
                          contentText(seal.birthYear == 'unknown'
                              ? seal.birthYear
                              : (DateTime.now().year -
                                      int.parse(seal.birthYear))
                                  .toString()),
                        ],
                      ),
                      Spacer(),
                      // horizontalBox(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          tagText('Size'),
                          contentText(seal.size),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          tagText('Sex'),
                          contentText(seal.sex),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  verticalBox(),
                  tagText('Birthplace'),
                  contentText(seal.birthIsland),
                  divider(),
                  tagText('Story'),
                  contentText(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 4),
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

Padding tagText(String text) => Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(
        text,
        style: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
    );

Text contentText(String text) => Text(text);

Text nameAndIDText(String text) => Text(
      text,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );

Divider divider() => const Divider(
      height: 56,
      color: Colors.grey,
    );

SizedBox verticalBox() => const SizedBox(height: 24);
