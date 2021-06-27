import 'package:equatable/equatable.dart';
import 'package:secret_seal_sauce/logic/models/photo.dart';

class Seal extends Equatable {
  final String id;
  final String name;
  final String size;
  final String sex;
  final String birthYear;
  final String birthIsland;
  final List<String> scars;
  final List<String> bleaching;
  final List<String> sightings;
  final List<Photo> photos;

  const Seal(
      this.id,
      this.name,
      this.size,
      this.sex,
      this.birthYear,
      this.birthIsland,
      this.photos,
      this.scars,
      this.bleaching,
      this.sightings);

  @override
  List<Object> get props => [
        id,
        name,
        size,
        sex,
        birthYear,
        birthIsland,
        photos,
        scars,
        bleaching,
        sightings
      ];
}
