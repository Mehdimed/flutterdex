import 'package:flutter/material.dart';
import 'package:flutterdex/routes.dart';
import 'package:flutterdex/theme.dart';

void main() {
  runApp(const FlutterDex());
}

class FlutterDex extends StatelessWidget {
  const FlutterDex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      theme: mainTheme,
    );
  }
}
