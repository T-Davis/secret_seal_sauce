import 'package:equatable/equatable.dart';

class Photo extends Equatable {
  final String description;
  final String attribution;
  final String photoPath200x200;
  final String photoPath800x800;
  final String photoPath1600x1600;

  Photo(
    this.description,
    this.attribution,
    this.photoPath200x200,
    this.photoPath800x800,
    this.photoPath1600x1600,
  );

  @override
  List<Object> get props => [
        description,
        attribution,
        photoPath200x200,
        photoPath800x800,
        photoPath1600x1600
      ];
}
