import 'package:cloud_firestore/cloud_firestore.dart';

import '../logic/models/seal.dart';

extension SealDocs on List<QueryDocumentSnapshot> {
  List<Seal> toSeals() => map<Seal>(
        (snapshot) => Seal(
            snapshot.id,
            snapshot.data()?['name'] as String,
            snapshot.data()?['birthplace'] as String,
            snapshot.data()?['sex'] as String,
            snapshot.data()?['age'] as int,
            snapshot.data()?['photoPath'] as String),
      ).toList();
}
