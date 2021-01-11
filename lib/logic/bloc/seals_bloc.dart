import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:secret_seal_sauce/extensions/firebase_extensions.dart';
import 'package:secret_seal_sauce/logic/models/seal.dart';

part 'seals_event.dart';
part 'seals_state.dart';

class SealsBloc extends Bloc<SealsEvent, SealsState> {
  SealsBloc() : super(const SealsInitial());

  @override
  Stream<SealsState> mapEventToState(SealsEvent event) =>
      (event is SealsRequest)
          ? FirebaseFirestore.instance
              .collection('seals')
              .snapshots()
              .map((snapshot) => SealsReceived(snapshot.docs.toSeals()))
          : Stream.fromIterable([]);
}
