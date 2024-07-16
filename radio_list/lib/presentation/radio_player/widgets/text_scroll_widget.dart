import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';

class TextScrollWidget extends StatelessWidget {
  const TextScrollWidget({
    super.key,
    required this.text,
    required this.widthOffset,
    this.textStyle,
  });
  final String text;
  final double widthOffset;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * widthOffset,
      ),
      child: TextScroll(
        text,
        style: textStyle,
        mode: TextScrollMode.endless,
        velocity: const Velocity(pixelsPerSecond: Offset(50, 0)),
        delayBefore: const Duration(milliseconds: 2000),
        pauseBetween: const Duration(milliseconds: 2000),
      ),
    );
  }
}
