part of 'seals_bloc.dart';

abstract class SealsState extends Equatable {
  final List<Seal>? seals;

  const SealsState(this.seals);

  @override
  List<Object?> get props => [seals];
}

class SealsInitial extends SealsState {
  const SealsInitial() : super(null);
}

class SealsReceived extends SealsState {
  final List<Seal> sealsFromDatabase;

  const SealsReceived(this.sealsFromDatabase) : super(sealsFromDatabase);
  
}