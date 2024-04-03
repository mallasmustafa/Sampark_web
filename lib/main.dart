import 'package:flutter/material.dart';
import 'package:sampark_web/View/home_page_view.dart';
import 'package:sampark_web/config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sampark Web',
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: HomePageView(),
    );
  }
}
