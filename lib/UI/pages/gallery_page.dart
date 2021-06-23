import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_seal_sauce/UI/components/custom_scaffold.dart';
import 'package:secret_seal_sauce/UI/pages/seal_profile_page.dart';
import 'package:secret_seal_sauce/logic/bloc/pages_bloc.dart';
import 'package:secret_seal_sauce/logic/bloc/seals_bloc.dart';
import 'package:secret_seal_sauce/logic/models/app_page.dart';
import 'package:secret_seal_sauce/logic/models/seal.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SealsBloc(),
      child: BlocBuilder<SealsBloc, SealsState>(
        builder: (context, state) => CustomScaffold(
          GalleryPageContent(),
        ),
      ),
    );
  }
}

class GalleryPageContent extends StatelessWidget {
  const GalleryPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SealsBloc, SealsState>(builder: (context, state) {
      final sealsBloc = BlocProvider.of<SealsBloc>(context);
      sealsBloc.add(SealsRequest());
      return SealsList(state.seals);
    });
  }
}

class SealsList extends StatelessWidget {
  const SealsList(
    this.seals, {
    Key? key,
  }) : super(key: key);

  final List<Seal>? seals;

  @override
  Widget build(BuildContext context) {
    final localSeals = seals;
    if (localSeals == null) {
      return const CircularProgressIndicator();
    }

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      children: List.generate(
        localSeals.length,
        (index) => GridViewTile(localSeals[index]),
      ),
    );
  }
}

class GridViewTile extends StatelessWidget {
  final Seal seal;

  const GridViewTile(this.seal);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context
            .read<PagesBloc>()
            .add(PagesPush(AppPage(SealProfilePage(seal))));
      },
      child: Card(
        child: Column(
          children: [
            FutureBuilder(
                future: FirebaseStorage.instance
                    .ref(seal.photos.first.photoPath200x200)
                    .getDownloadURL(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Image.network(snapshot.data! as String);
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
            Text(seal.name),
          ],
        ),
      ),
    );
  }
}
