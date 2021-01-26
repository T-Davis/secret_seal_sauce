import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/bloc/pages_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Seal Sauce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FutureBuilder(
          future: _firebaseApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('Error - ${snapshot.error.toString()}');
              return const Text('Something went wrong');
            } else if (snapshot.hasData) {
              return BlocProvider(
                create: (context) => PagesBloc(),
                child: BlocBuilder<PagesBloc, PagesState>(
                  builder: (context, state) => Navigator(
                    pages: state.pages,
                    onPopPage: (route, result) {
                      if (!route.didPop(result)) {
                        return false;
                      }
                      if (route.isCurrent) {
                        BlocProvider.of<PagesBloc>(context).add(PagesPop());
                      }
                      return true;
                    },
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}