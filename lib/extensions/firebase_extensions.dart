import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:secret_seal_sauce/logic/models/photo.dart';

import '../logic/models/seal.dart';

extension SealDocs on List<QueryDocumentSnapshot> {
  List<Seal> toSeals() => map<Seal>((snapshot) {
        if (snapshot.exists) {}
        final data = snapshot.data()! as Map<String, dynamic>;

        return Seal(
            data['ID'] as String,
            (data['name'] ??= 'none') as String,
            (data['size'] ??= 'unknown') as String,
            (data['sex'] ??= 'unknown') as String,
            (data['birthYear'] != null)
                ? data['birthYear'].toString()
                : 'unknown',
            (data['birthIsland'] ??= 'unknown') as String,
            _photosMapper(data['photos']),
            _scarsMapper(data),
            _bleachesMapper(data),
            _sightingsMapper(data));
      }).toList();
}

List<Photo> _photosMapper(dynamic photos) {
  final stockPhotoPath = 'seals/stock_monk_seal_200x200.webp';
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

List<String> _scarsMapper(Map<String, dynamic> data) {
  final scars = <String>[];
  if (data['dorsalScar'] != null) scars.add('Dorsal');
  if (data['ventralScar'] != null) scars.add('Ventral');
  if (data['rightLateralScar'] != null) scars.add('Right Lateral');
  if (data['leftLateralScar'] != null) scars.add('Left Lateral');
  if (data['foreflippersScar'] != null) scars.add('Foreflippers');
  if (data['hindflippersScar'] != null) scars.add('Hindflippers');

  return scars;
}

List<String> _bleachesMapper(Map<String, dynamic> data) {
  final bleaches = <String>[];
  if (data['dorsalBleach'] != null) bleaches.add('Dorsal');
  if (data['ventralBleach'] != null) bleaches.add('Ventral');
  if (data['rightLateralBleach'] != null) bleaches.add('Right Lateral');
  if (data['leftLateralBleach'] != null) bleaches.add('Left Lateral');
  if (data['foreflippersBleach'] != null) bleaches.add('Foreflippers');
  if (data['hindflippersBleach'] != null) bleaches.add('Hindflippers');

  return bleaches;
}

List<String> _sightingsMapper(Map<String, dynamic> data) {
  final sightings = <String>[];
  if (data['hawaiiSighting'] != null) sightings.add('Hawaii');
  if (data['kauaiSighting'] != null) sightings.add('Mauai');
  if (data['molokaiSighting'] != null) sightings.add('Molokai');
  if (data['mauiSighting'] != null) sightings.add('Maui');
  if (data['lanaiSighting'] != null) sightings.add('Lanai');

  return sightings;
}
