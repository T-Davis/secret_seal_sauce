import 'package:equatable/equatable.dart';
import 'package:secret_seal_sauce/enum/birthplace.dart';
import 'package:secret_seal_sauce/enum/sex.dart';

class Seal extends Equatable {
  final String id;
  final Birthplace birthplace;
  final Sex sex;
  final int age;
  final String photoURL;

  const Seal(this.id, this.birthplace, this.sex, this.age, String photoURL)
      : photoURL = 'seals/resized/${photoURL}_800x800.webp';

  @override
  List<Object> get props => [id, birthplace, sex, age, photoURL];
}
