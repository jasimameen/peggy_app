import 'package:flutter/material.dart';

import '../../../common/constants/constants.dart';
import '../../../common/presentation/widgets/profile_avathar.dart';

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
