import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_link.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';
import 'package:secret_seal_sauce/UI/pages/gallery_page.dart';

class ScarringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      ScarringPageContent(),
    );
  }
}

class ScarringPageContent extends StatelessWidget {
  const ScarringPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Scarring Location',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CustomLink(text: 'Dorsal', route: GalleryPage()),
          CustomLink(text: 'Ventral', route: GalleryPage()),
          CustomLink(text: 'Left lateral', route: GalleryPage()),
          CustomLink(text: 'Right lateral', route: GalleryPage()),
        ]),
      ),
    );
  }
}
