import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/presentation/widgets/profile_avathar.dart';

class AudioCard extends StatelessWidget {
  const AudioCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 316,
      height: 108,
      padding: const EdgeInsets.all(19),
      color: const Color.fromRGBO(240, 240, 240, 1),
      child: Row(
        children: [
          // play/pause icon
          const Icon(CupertinoIcons.play_circle_fill, size: 52),

          UIConstants.width10,

          // text
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '''Gallerist Karen Huber on the Importance of painting''',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),

                UIConstants.height3,
                // subtitle
                _AudioMetaBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AudioMetaBar extends StatelessWidget {
  const _AudioMetaBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // peggy logo
        ProfileAvathar.svgImage(image: AssetConstants.logo, radius: 10),

        UIConstants.width5,

        // text
        const _MetaText('Karen Huber'),

        UIConstants.width5,
        const Icon(Icons.circle, size: 5),
        UIConstants.width5,

        const _MetaText('32 mins'),
      ],
    );
  }
}

class _MetaText extends Text {
  const _MetaText(super.data, {Key? key})
      : super(
          key: key,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w500,
            wordSpacing: 1,
            letterSpacing: .6,
          ),
        );
}
