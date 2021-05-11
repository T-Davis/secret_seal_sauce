import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_link.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';
import 'package:secret_seal_sauce/UI/pages/gallery_page.dart';

class BleachNumbersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      BleachNumbersPageContent(),
    );
  }
}

class BleachNumbersPageContent extends StatelessWidget {
  const BleachNumbersPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Bleach Number',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CustomLink(text: '1', route: GalleryPage()),
          CustomLink(text: '2', route: GalleryPage()),
          CustomLink(text: '3', route: GalleryPage()),
          CustomLink(text: '4', route: GalleryPage()),
        ]),
      ),
    );
  }
}
