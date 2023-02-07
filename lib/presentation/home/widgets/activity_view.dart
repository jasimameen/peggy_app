import 'package:flutter/material.dart';
import 'package:peggy/presentation/widgets/post_card.dart';

class HomeActivityTabView extends StatelessWidget {
  const HomeActivityTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        // post card
        PostCard(),

        //
      ],
    );
  }
}
