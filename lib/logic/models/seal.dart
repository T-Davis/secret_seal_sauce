import 'package:equatable/equatable.dart';
import 'package:secret_seal_sauce/logic/models/photo.dart';

class Seal extends Equatable {
  final String id;
  final String name;
  final String birthplace;
  final String sex;
  final int age;
  final List<Photo> photos;

  const Seal(
      this.id, this.name, this.birthplace, this.sex, this.age, this.photos);

  @override
  List<Object> get props => [id, name, birthplace, sex, age, photos];
}
