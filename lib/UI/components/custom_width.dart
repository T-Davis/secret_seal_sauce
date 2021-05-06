import 'package:flutter/material.dart';

class CustomWidth extends StatelessWidget {
  final Widget content;

  const CustomWidth(this.content);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Flexible(
            flex: 10,
            child: Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 1000),
                child: content,
              ),
            )),
        Spacer()
      ],
    );
  }
}
