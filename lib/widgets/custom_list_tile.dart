import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/subtitles_text.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CustomListTile extends StatelessWidget {
  final String imagePath, text;
  final Function function;
  const CustomListTile({
    super.key,
    required this.imagePath,
    required this.text,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.asset(imagePath, height: 30),
      title: SubtitlesTextWidget(label: text),
      trailing: Icon(IconlyLight.arrowRight2),
    );
  }
}
