import 'package:flutter/material.dart';

class SubtitlesTextWidget extends StatelessWidget {
  final String label;
  final double fontSize;
  final FontStyle fontStyle;
  final FontWeight fontWeight;
  final Color? color;
  final TextDecoration textDecoration;

  const SubtitlesTextWidget(
    {super.key, 
    required this.label, 
    this.fontSize = 18, 
    this.fontStyle = FontStyle.normal, 
    this.fontWeight = FontWeight.normal, 
    this.color, 
    this.textDecoration = TextDecoration.none,
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontStyle: fontStyle,
        decoration: textDecoration,
      ),
    );
  }
}