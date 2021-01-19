import 'package:equatable/equatable.dart';

class Seal extends Equatable {
  final String id;
  final String name;
  final String birthplace;
  final String sex;
  final int age;
  final String photoURL;

  const Seal(
      this.id, this.name, this.birthplace, this.sex, this.age, String photoURL)
      : photoURL = 'seals/resized/${photoURL}_800x800.webp';

  @override
  List<Object> get props => [id, name, birthplace, sex, age, photoURL];
}
