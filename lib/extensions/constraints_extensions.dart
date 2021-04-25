import 'package:flutter/rendering.dart';
import 'package:secret_seal_sauce/utils/constants.dart';

extension BoxConstraintsExtension on BoxConstraints {
  bool get indicateSmallScreen => maxWidth < smallScreenWidth;
  bool get indicateLargeScreen => maxWidth >= smallScreenWidth;
}
