import 'package:endgame/screens/loading_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Endgame());
}

class Endgame extends StatelessWidget {
  const Endgame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Endgame',
      theme: ThemeData.dark().copyWith(),
      home: const LoadingScreen(),
    );
  }
}
