import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_app_bar.dart';
import 'package:secret_seal_sauce/logic/models/seal.dart';

class SealProfilePage extends StatelessWidget {
  final Seal seal;

  const SealProfilePage(this.seal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Card(
          child: Column(
            children: [
              FutureBuilder(
                  future: FirebaseStorage.instance
                      .ref(seal.photoURL)
                      .getDownloadURL(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Image.network(snapshot.data as String);
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }),
              Text(seal.name),
            ],
          ),
        ),
      ),
    );
  }
}
