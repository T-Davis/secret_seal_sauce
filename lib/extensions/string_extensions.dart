import 'package:flutter/foundation.dart';

import '../enum/birthplace.dart';
import '../enum/sex.dart';

extension SexEnumExtension on String {
  Sex toSexEnum() => Sex.values.firstWhere((d) => describeEnum(d) == this);
}

extension BirthplaceEnumExtension on String {
  Birthplace toBirthplaceEnum() =>
      Birthplace.values.firstWhere((d) => describeEnum(d) == this);
}
