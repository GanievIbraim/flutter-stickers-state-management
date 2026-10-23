import 'package:flutter/material.dart';

import 'states/_states.dart';
import 'ui/_ui.dart';
import 'ui_kit/_ui_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final state = StickerState();

  void onThemeTap() {
    state.toggleTheme();
    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunny Stickers',
      theme: state.light ? AppTheme.lightTheme : AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
