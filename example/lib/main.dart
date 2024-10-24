import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Hello World!'),
              const Gap(8),
              Container(
                height: 100,
                width: 100,
                color: 'bada55'.toColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
