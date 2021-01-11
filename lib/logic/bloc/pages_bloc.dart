import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/pages/home_page.dart';
import 'package:secret_seal_sauce/logic/models/app_page.dart';

part 'pages_event.dart';
part 'pages_state.dart';

class PagesBloc extends Bloc<PagesEvent, PagesState> {
  PagesBloc() : super(PagesInitial([AppPage(const HomePage())]));

  @override
  Stream<PagesState> mapEventToState(
    PagesEvent event,
  ) async* {
    if (event is PagesPush) {
      final nextState = copyState()..clear()..add(event.page);
      yield PagesAdded(nextState);
    } else if (event is PagesPop) {
      final nextState = copyState()..removeLast();
      yield PagesRemoved(nextState);
    }
  }

  List<AppPage> copyState() {
    return List<AppPage>.from(state.pages);
  }
}
