import 'package:flutter/material.dart';

import '../../const/app_colors.dart';

class Text16Size extends StatelessWidget {
  const Text16Size({
    super.key,
    required this.text,
    this.maxLines,
    this.color = AppColors.black,
    this.fontWeight = FontWeight.w800,
    this.size = 16,
    this.textOverflow,
    this.textAlign = TextAlign.start,
  });
  final String text;
  final int? maxLines;
  final Color color;
  final FontWeight? fontWeight;
  final double size;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          fontFamily: 'Axiforma'
      ),
    );
  }
}
