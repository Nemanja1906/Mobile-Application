import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/titles_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TitleTextWidget(label: "Search Screen"),
      ),

    );
  }
}