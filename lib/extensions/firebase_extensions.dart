import 'package:cloud_firestore/cloud_firestore.dart';

import '../logic/models/seal.dart';

extension SealDocs on List<QueryDocumentSnapshot> {
  List<Seal> toSeals() => map<Seal>((snapshot) {
        if (snapshot.exists) {}
        final data = snapshot.data()! as Map<String, dynamic>;

        return Seal(
            snapshot.id,
            data['name'] as String,
            data['birthplace'] as String,
            data['sex'] as String,
            data['age'] as int,
            data['photoPath'] as String);
      }).toList();
}
