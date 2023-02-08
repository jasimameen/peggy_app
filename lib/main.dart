import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'presentation/base/base_app.dart';
import 'presentation/core/responsive.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'peggy',

      // thems
      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme: GoogleFonts.cabinTextTheme(Theme.of(context).textTheme),
      ),

      //
      home: const Responsive(child: BaseScreen()),
    );
  }
}
