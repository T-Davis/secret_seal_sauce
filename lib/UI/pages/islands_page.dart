import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_link.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';
import 'package:secret_seal_sauce/UI/pages/gallery_page.dart';

class IslandsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      IslandsPageContent(),
    );
  }
}

class IslandsPageContent extends StatelessWidget {
  const IslandsPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Islands',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CustomLink(text: 'Hawaii', route: GalleryPage()),
          CustomLink(text: 'Kauai', route: GalleryPage()),
          CustomLink(text: 'Molokai', route: GalleryPage()),
          CustomLink(text: 'Maui', route: GalleryPage()),
          CustomLink(text: 'Lanai', route: GalleryPage()),
        ]),
      ),
    );
  }
}
