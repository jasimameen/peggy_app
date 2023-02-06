import 'package:flutter/material.dart';
import 'package:peggy/presentation/core/responsive.dart';
import 'package:peggy/presentation/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'peggy',
      builder: (context, child) {
        return const Responsive(child: HomeScreen());
      },
    );
  }
}
