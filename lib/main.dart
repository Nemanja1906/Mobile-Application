import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/theme_data.dart';
import 'package:flutter_application_1/providers/theme_provider.dart';
import 'package:flutter_application_1/root_screen.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [

      ChangeNotifierProvider(create: (context) => ThemeProvider(),
      )
    ],
    child: Consumer<ThemeProvider>(
      builder: (context, themeProvider, child ) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: Styles.themeData(isDarkTheme: themeProvider.getIsDarkTheme, context: context),
        home: const RootScreen(),
      );

    },
    ),
    );
  }
}

