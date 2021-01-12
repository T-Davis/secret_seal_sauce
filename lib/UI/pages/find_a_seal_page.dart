import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_seal_sauce/UI/components/custom_app_bar.dart';
import 'package:secret_seal_sauce/logic/bloc/seals_bloc.dart';

class FindASealPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SealsBloc(),
      child: BlocBuilder<SealsBloc, SealsState>(
        builder: (context, state) => Scaffold(
          appBar: const CustomAppBar(),
          body: Column(
            children: const [
              FilterControls(),
              SealsList(),
            ],
          ),
        ),
      ),
    );
  }
}

class SealsList extends StatelessWidget {
  const SealsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sealsBloc = BlocProvider.of<SealsBloc>(context);
    sealsBloc.add(SealsRequest());
    final seals = sealsBloc.state.seals;
    if (seals == null) {
      return const CircularProgressIndicator();
    }
    return ListView.builder(
        shrinkWrap: true,
        itemCount: seals.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(seals[index].age.toString()),
            ),
          );
        });
  }
}

class FilterControls extends StatelessWidget {
  const FilterControls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.amber,
      child: Row(
        children: const [
          SizedBox(width: 50),
          Text('thing'),
          SizedBox(width: 50),
          Text('thing2')
        ],
      ),
    );
  }
}
