import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/theme_provider.dart';
import 'package:flutter_application_1/widgets/subtitles_text.dart';
import 'package:flutter_application_1/widgets/titles_text.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TitleTextWidget(label: "This is the Tittle"),
          const SubtitlesTextWidget(
            label: "Hi, Again",
            color: Colors.red,
            fontSize: 50,
          ),
        ],
      ),
    );
  }
}
