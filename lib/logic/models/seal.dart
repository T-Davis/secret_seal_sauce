import 'package:equatable/equatable.dart';
import 'package:secret_seal_sauce/logic/models/photo.dart';

class Seal extends Equatable {
  final String id;
  final String name;
  final String size;
  final String sex;
  final String birthYear;
  final String birthIsland;
  final bool dorsalScar;
  final bool ventralScar;
  final bool rightLateralScar;
  final bool leftLateralScar;
  final bool foreflippersScar;
  final bool hindflippersScar;
  final bool dorsalBleach;
  final bool ventralBleach;
  final bool rightLateralBleach;
  final bool leftLateralBleach;
  final bool foreflippersBleach;
  final bool hindflippersBleach;
  final bool hawaiiSighting;
  final bool kauaiSighting;
  final bool molokaiSighting;
  final bool mauiSighting;
  final bool lanaiSighting;
  final List<Photo> photos;

  const Seal(
      this.id,
      this.name,
      this.size,
      this.sex,
      this.birthYear,
      this.birthIsland,
      this.dorsalScar,
      this.ventralScar,
      this.rightLateralScar,
      this.leftLateralScar,
      this.foreflippersScar,
      this.hindflippersScar,
      this.dorsalBleach,
      this.ventralBleach,
      this.rightLateralBleach,
      this.leftLateralBleach,
      this.foreflippersBleach,
      this.hindflippersBleach,
      this.hawaiiSighting,
      this.kauaiSighting,
      this.molokaiSighting,
      this.mauiSighting,
      this.lanaiSighting,
      this.photos);

  @override
  List<Object> get props => [
        id,
        name,
        size,
        sex,
        birthYear,
        birthIsland,
        dorsalScar,
        ventralScar,
        rightLateralScar,
        leftLateralScar,
        foreflippersScar,
        hindflippersScar,
        dorsalBleach,
        ventralBleach,
        rightLateralBleach,
        leftLateralBleach,
        foreflippersBleach,
        hindflippersBleach,
        hawaiiSighting,
        kauaiSighting,
        molokaiSighting,
        mauiSighting,
        lanaiSighting,
        photos
      ];
}
