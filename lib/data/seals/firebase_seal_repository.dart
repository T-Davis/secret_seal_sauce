import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:secret_seal_sauce/logic/models/photo.dart';
import 'package:secret_seal_sauce/logic/models/seal.dart';
import 'package:secret_seal_sauce/logic/repository/seal_repository.dart';

class FirebaseSealRepository implements SealRepository {
  @override
  Future<List<Seal>> getAllSeals() async {
    final snapshot = await FirebaseFirestore.instance.collection('seals').get();
    final List<Seal> seals = dataToSeals(snapshot);
    return seals;
  }

  @override
  Future<List<Seal>> getSealsByBleachLocation(String location) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('seals')
        .where('${location}Bleach')
        .get();
    final List<Seal> seals = dataToSeals(snapshot);
    return seals;
  }

  @override
  Future<List<Seal>> getSealsByScarLocation(String location) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('seals')
        .where('${location}Scar')
        .get();
    final List<Seal> seals = dataToSeals(snapshot);
    return seals;
  }

  @override
  Future<List<Seal>> getSealsByIsland(String island) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('seals')
        .where('${island}Sighting')
        .get();
    final List<Seal> seals = dataToSeals(snapshot);
    return seals;
  }

  List<Seal> dataToSeals(QuerySnapshot<Map<String, dynamic>> data) {
    final seals = <Seal>[];
    for (final queryDoc in data.docs) {
      final doc = queryDoc as Map<String, dynamic>;
      doc.forEach((key, value) {
        seals.add(Seal(
            value['ID'] as String,
            (value['name'] ??= 'none') as String,
            (value['size'] ??= 'unknown') as String,
            (value['sex'] ??= 'unknown') as String,
            (value['birthYear'] != null)
                ? value['birthYear'].toString()
                : 'unknown',
            (value['birthIsland'] ??= 'unknown') as String,
            _dataToPhotos(doc['photos']),
            _dataToScars(doc),
            _dataToBleaches(doc),
            _dataToSightings(doc)));
      });
    }

    return seals;
  }

  List<Photo> _dataToPhotos(dynamic data) {
    final stockPhotoPath = 'seals/stock_monk_seal_200x200.webp';
    if (data == null) {
      return [Photo('', '', stockPhotoPath, stockPhotoPath, stockPhotoPath)];
    }
    final photos = data as List<dynamic>;
    final sealPhotos = <Photo>[];
    for (final element in photos) {
      sealPhotos.add(Photo(
          (element['description'] ??= '') as String,
          (element['attribution'] ??= '') as String,
          (element['photoPath200x200'] ??= stockPhotoPath) as String,
          (element['photoPath800x800'] ??= stockPhotoPath) as String,
          (element['photoPath1600x1600'] ??= stockPhotoPath) as String));
    }

    return sealPhotos;
  }

  List<String> _dataToScars(Map<String, dynamic> data) {
    final scars = <String>[];
    if (data['dorsalScar'] != null) scars.add('Dorsal');
    if (data['ventralScar'] != null) scars.add('Ventral');
    if (data['rightLateralScar'] != null) scars.add('Right Lateral');
    if (data['leftLateralScar'] != null) scars.add('Left Lateral');
    if (data['foreflippersScar'] != null) scars.add('Foreflippers');
    if (data['hindflippersScar'] != null) scars.add('Hindflippers');

    return scars;
  }

  List<String> _dataToBleaches(Map<String, dynamic> data) {
    final bleaches = <String>[];
    if (data['dorsalBleach'] != null) bleaches.add('Dorsal');
    if (data['ventralBleach'] != null) bleaches.add('Ventral');
    if (data['rightLateralBleach'] != null) bleaches.add('Right Lateral');
    if (data['leftLateralBleach'] != null) bleaches.add('Left Lateral');
    if (data['foreflippersBleach'] != null) bleaches.add('Foreflippers');
    if (data['hindflippersBleach'] != null) bleaches.add('Hindflippers');

    return bleaches;
  }

  List<String> _dataToSightings(Map<String, dynamic> data) {
    final sightings = <String>[];
    if (data['hawaiiSighting'] != null) sightings.add('Hawaii');
    if (data['kauaiSighting'] != null) sightings.add('Mauai');
    if (data['molokaiSighting'] != null) sightings.add('Molokai');
    if (data['mauiSighting'] != null) sightings.add('Maui');
    if (data['lanaiSighting'] != null) sightings.add('Lanai');

    return sightings;
  }
}
