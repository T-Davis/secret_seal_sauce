import 'package:flutter/material.dart';
import 'package:secret_seal_sauce/UI/components/custom_app_bar.dart';

class FindASealPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: Column(
          children: [
            Container(
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
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, size) {
                  return const Card(
                    child: ListTile(
                      title: Text('hello'),
                    ),
                  );
                })
          ],
        )

        // Column(
        //   children: [
        //     Expanded(
        //       child: Row(
        //         children: [],
        //       ),
        //     ),
        //   ],
        // )
        );
  }
}
