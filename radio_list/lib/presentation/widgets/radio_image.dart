import 'dart:io';

import 'package:flutter/material.dart';

class RadioImage extends StatelessWidget {
  const RadioImage(
      {super.key,
      required this.favicon,
      this.width = 110,
      this.withBackground = false,
      this.circular = false});
  final String favicon;
  final double width;
  final bool withBackground;
  final bool circular;
  @override
  Widget build(BuildContext context) {
    return Platform.environment.containsKey('FLUTTER_TEST') || favicon.isEmpty
        ? const SizedBox()
        : Container(
            width: width,
            height: width,
            decoration: BoxDecoration(
              color: withBackground ? Colors.white : null,
              shape: BoxShape.rectangle,
              borderRadius: withBackground
                  ? BorderRadius.all(
                      Radius.circular(circular ? 80 : 5),
                    )
                  : null,
              image: DecorationImage(
                image: NetworkImage(favicon),
                fit: BoxFit.cover,
              ),
            ),
          );
  }
}
