import 'package:equatable/equatable.dart';

class Photo extends Equatable {
  final String description;
  final String attribution;
  final String url;

  Photo(this.description, this.attribution, this.url);

  @override
  List<Object> get props => [description, attribution, url];
}
