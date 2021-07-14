import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  AdaptativeButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            onPressed: () {
              onPressed();
            },
          )
        : RaisedButton(
            child: Text(label),
            color: Theme.of(context).primaryColor,
            textColor: Theme.of(context).textTheme.button!.color,
            onPressed: () {
              onPressed();
            },
          );
  }
}
