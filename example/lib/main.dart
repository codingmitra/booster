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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Hello World!'),
                const Gap(8),
                Container(
                  height: 100,
                  width: 100,
                  color: 'bada55'.toColor,
                ),
                const Gap(16),
                FlexRow(
                  gap: 16,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: 'bada55'.toColor,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: '5eabed'.toColor,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: 'facade'.toColor,
                    ),
                  ],
                ),
                const Gap(16),
                FlexColumn(
                  gap: 16,
                  // reversed: true,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: 'bada55'.toColor,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: '5eabed'.toColor,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: 'facade'.toColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
