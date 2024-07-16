import 'package:flutter/material.dart';

BoxDecoration getAppBarDecoration(BuildContext context) {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Theme.of(context).appBarTheme.backgroundColor!,
        Colors.black54,
      ],
    ),
  );
}
