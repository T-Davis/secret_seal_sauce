import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:secret_seal_sauce/extensions/string_extensions.dart';

import '../logic/models/seal.dart';

extension SealDocs on List<QueryDocumentSnapshot> {
  List<Seal> toSeals() {
    final sealsList = <Seal>[];
    for (final QueryDocumentSnapshot snapshot in this) {
      sealsList.add(Seal(
          snapshot.id,
          (snapshot.data()['birthplace'] as String).toBirthplaceEnum(),
          (snapshot.data()['sex'] as String).toSexEnum(),
          snapshot.data()['age'] as int,
          snapshot.data()['photoPath'] as String));
    }
    return sealsList;
  }
}
