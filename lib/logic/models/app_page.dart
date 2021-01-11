import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppPage extends MaterialPage with EquatableMixin {
  final Widget page;

  AppPage(this.page)
      : super(key: ValueKey(page.runtimeType.toString()), child: page);

  @override
  List<Object> get props => [page];
}
