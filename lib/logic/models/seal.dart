import 'package:equatable/equatable.dart';
import 'package:secret_seal_sauce/enum/birthplace.dart';
import 'package:secret_seal_sauce/enum/sex.dart';

class Seal extends Equatable {
  final Birthplace birthplace;
  final Sex sex;
  final int age;

  const Seal(this.birthplace, this.sex, this.age);

  @override
  List<Object> get props => [birthplace, sex, age];
}
