import 'package:flutter/material.dart';
import 'package:peggy/presentation/base/base_app.dart';
import 'package:peggy/presentation/core/responsive.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'peggy',
      home: Responsive(child: BaseScreen()),
    );
  }
}
