import 'package:secret_seal_sauce/logic/models/seal.dart';

abstract class SealRepository {
  Future<List<Seal>> getAllSeals();
  Future<List<Seal>> getSealsByScarLocation(String location);
  Future<List<Seal>> getSealsByBleachLocation(String location);
  Future<List<Seal>> getSealsByIsland(String island);
}
