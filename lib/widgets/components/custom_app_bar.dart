import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: FlatButton(
        child: Text(
          'Hawaii Seals',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
      ),
      actions: [
        FlatButton(
          child: Text('Learn'),
          onPressed: () {},
        ),
        FlatButton(
          child: Text('Find a Seal'),
          onPressed: () {},
        ),
        FlatButton(
          child: Text('Ocean Activities'),
          onPressed: () {},
        ),
        FlatButton(
          child: Text('Who We Are'),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
