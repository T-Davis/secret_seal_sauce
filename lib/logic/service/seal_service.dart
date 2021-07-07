import 'package:secret_seal_sauce/logic/models/seal.dart';
import 'package:secret_seal_sauce/logic/repository/seal_repository.dart';

class SealService implements SealRepository {
  final SealRepository _sealRepository;

  SealService(this._sealRepository);

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
