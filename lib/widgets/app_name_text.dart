import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/titles_text.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidget extends StatelessWidget {
  final double fontSize;
  const AppNameTextWidget({super.key, this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
     baseColor: Colors.purple, 
     highlightColor: Colors.red,
     child: TitleTextWidget(label: "Nemanja's Shop",
     fontSize: fontSize,
     
     ),
     
     );
  }
}