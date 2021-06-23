import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:secret_seal_sauce/logic/models/photo.dart';

import '../logic/models/seal.dart';

extension SealDocs on List<QueryDocumentSnapshot> {
  List<Seal> toSeals() => map<Seal>((snapshot) {
        if (snapshot.exists) {}
        final data = snapshot.data()! as Map<String, dynamic>;

        return Seal(
            snapshot.id,
            (data['name'] ??= 'unknown') as String,
            (data['size'] ??= 'unknown') as String,
            (data['sex'] ??= 'unknown') as String,
            (data['birthYear'] != null)
                ? data['birthYear'].toString()
                : 'unknown',
            (data['birthIsland'] ??= 'unknown') as String,
            (data['dorsalScar'] ??= false) as bool,
            (data['ventralScar'] ??= false) as bool,
            (data['rightLateralScar'] ??= false) as bool,
            (data['leftLateralScar'] ??= false) as bool,
            (data['foreflippersScar'] ??= false) as bool,
            (data['hindflippersScar'] ??= false) as bool,
            (data['dorsalBleach'] ??= false) as bool,
            (data['ventralBleach'] ??= false) as bool,
            (data['rightLateralBleach'] ??= false) as bool,
            (data['leftLateralBleach'] ??= false) as bool,
            (data['foreflippersBleach'] ??= false) as bool,
            (data['hindflippersBleach'] ??= false) as bool,
            (data['hawaiiSighting'] ??= false) as bool,
            (data['kauaiSighting'] ??= false) as bool,
            (data['molokaiSighting'] ??= false) as bool,
            (data['mauiSighting'] ??= false) as bool,
            (data['lanaiSighting'] ??= false) as bool,
            photoMapper(data['photos']));
      }).toList();
}

const stockPhotoPath = 'seals/stock_monk_seal_200x200.webp';

List<Photo> photoMapper(dynamic photos) {
  if (photos == null) {
    return [Photo('', '', stockPhotoPath, stockPhotoPath, stockPhotoPath)];
  }
  final data = photos as List<dynamic>;
  final sealPhotos = <Photo>[];
  for (final element in data) {
    sealPhotos.add(Photo(
        (element['description'] ??= '') as String,
        (element['attribution'] ??= '') as String,
        (element['photoPath200x200'] ??= stockPhotoPath) as String,
        (element['photoPath800x800'] ??= stockPhotoPath) as String,
        (element['photoPath1600x1600'] ??= stockPhotoPath) as String));
  }

  return sealPhotos;
}
