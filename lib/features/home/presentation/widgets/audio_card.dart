

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:peggy/core/enums/audio_state_enum.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/presentation/widgets/profile_avathar.dart';

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
          const PlayPause(),

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

class PlayPause extends StatelessWidget {
  const PlayPause({
    super.key,
    this.audioState = AudioState.pause,
  });

  final AudioState audioState;

  @override
  Widget build(BuildContext context) {
    double turns = 0;

    return StatefulBuilder(
      builder: (ctx, setState) => IconButton(
        onPressed: () {
          turns += 2;
          HapticFeedback.lightImpact();
          setState(() {});
        },
        icon: AnimatedRotation(
          turns: turns,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOutCirc,
          child: Icon(
            audioState == AudioState.playing
                ? CupertinoIcons.pause_circle_fill
                : CupertinoIcons.play_circle_fill,
            size: 52,
          ),
        ),
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
