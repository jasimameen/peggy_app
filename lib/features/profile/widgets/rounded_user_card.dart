import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/presentation/widgets/profile_avathar.dart';

class RoundedUserCard extends StatelessWidget {
  const RoundedUserCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAvathar.image(
          image: AssetConstants.artwork1,
          radius: 59,
        ),
        UIConstants.height10,
        const Text(
          'Charies Meanwell',
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
