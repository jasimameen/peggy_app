import 'package:flutter/material.dart';

class ComingSoonScreen extends StatelessWidget {
  final String text;

  const ComingSoonScreen({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$text is Comming Soon"),
      ),
    );
  }
}
