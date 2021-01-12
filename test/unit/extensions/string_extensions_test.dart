import 'package:secret_seal_sauce/enum/sex.dart';
import 'package:secret_seal_sauce/extensions/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('String Extension', () {
    test('toSexEnum', () {
      expect('hello'.toSexEnum(), Sex.unknown);
      expect('male'.toSexEnum(), Sex.male);
      expect('female'.toSexEnum(), Sex.female);
    });
  });
}
