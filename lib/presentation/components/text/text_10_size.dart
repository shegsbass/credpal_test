import 'package:flutter/material.dart';

import '../../const/app_colors.dart';

class Text10Size extends StatelessWidget {
  const Text10Size({
    super.key,
    required this.text,
    this.maxLines,
    this.color = AppColors.black,
    this.fontWeight = FontWeight.w400,
    this.size = 10,
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
