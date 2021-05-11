import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_link.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';
import 'package:secret_seal_sauce/UI/pages/gallery_page.dart';

class TagsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      TagsPageContent(),
    );
  }
}

class TagsPageContent extends StatelessWidget {
  const TagsPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Tag Color',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CustomLink(text: 'Rainbow', route: GalleryPage()),
        ]),
      ),
    );
  }
}
