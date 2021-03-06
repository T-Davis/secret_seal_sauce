import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:secret_seal_sauce/data/seals/firebase_seal_repository.dart';
import 'package:secret_seal_sauce/logic/models/seal.dart';
import 'package:secret_seal_sauce/logic/repository/seal_repository.dart';

part 'seals_event.dart';
part 'seals_state.dart';

class SealsBloc extends Bloc<SealsEvent, SealsState> implements SealRepository {
  final SealRepository _sealRepository = FirebaseSealRepository();

  SealsBloc() : super(const SealsInitial());

  @override
  Stream<SealsState> mapEventToState(SealsEvent event) async* {
    if (event is SealsRequest) {
      final seals = await getAllSeals();
      yield SealsReceived(seals);
    }
  }

  @override
  Future<List<Seal>> getAllSeals() {
    return _sealRepository.getAllSeals();
  }

  @override
  Future<List<Seal>> getSealsByBleachLocation(String location) {
    return _sealRepository.getSealsByBleachLocation(location);
  }

  @override
  Future<List<Seal>> getSealsByIsland(String island) {
    return _sealRepository.getSealsByIsland(island);
  }

  @override
  Future<List<Seal>> getSealsByScarLocation(String location) {
    return _sealRepository.getSealsByScarLocation(location);
  }
}
