import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/presentation/widgets/profile_avathar.dart';

class SuggestionCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const SuggestionCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  const SuggestionCard.collecter({
    super.key,
    required this.title,
  }) : subtitle = 'Collecter';

  const SuggestionCard.artist({
    super.key,
    required this.title,
  }) : subtitle = 'Artist';

  const SuggestionCard.artwork({
    super.key,
    required this.title,
    required String subtitle,
  }) : subtitle = 'Artwork - $subtitle';

  const SuggestionCard.pegboard({
    super.key,
    required this.title,
    required String subtitle,
  }) : subtitle = 'Pegboard - $subtitle';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.maxFinite,
      child: ListTile(
        dense: true,
        leading: ProfileAvathar.byName(title[0], radius: 40),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            letterSpacing: .5,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 10),
        ),
        trailing: const InkWell(child: Icon(CupertinoIcons.xmark)),
      ),
    );
  }
}
