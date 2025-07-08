import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/titles_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TitleTextWidget(label: "Profile Screen"),
      ),

    );
  }
}