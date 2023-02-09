import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_avathar.dart';

import '../core/constants/constants.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 600,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // title
          const PostCardTitleBar(),

          // image
          Flexible(
            child: Image.asset(
              AssetConstants.artwork1,
              fit: BoxFit.fitWidth,
            ),
          ),

          // footer
          UIConstants.height5,
          const _Footer(),
        ],
      ),
    );
  }
}

class PostCardTitleBar extends StatelessWidget {
  const PostCardTitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const greyTextStyle = TextStyle(color: Colors.grey);
    return SizedBox(
      height: 57,
      child: Row(
        children: [
          // profile photo
          ProfileAvathar.image(image: AssetConstants.artwork1, radius: 17),

          UIConstants.width8,

          // title
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // upper text
              Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 10),
                  children: [
                    TextSpan(text: 'Katelyn Smith'),
                    TextSpan(text: '. 2m', style: greyTextStyle),
                  ],
                ),
              ),

              UIConstants.height5,

              // lower text
              Text.rich(TextSpan(
                style: TextStyle(fontSize: 12),
                children: [
                  TextSpan(text: 'Pegaboarded'),
                  TextSpan(text: ' in ', style: greyTextStyle),
                  TextSpan(text: 'My First Pegaboard')
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 31,
      child: Row(
        children: const [
          // heart
          Icon(CupertinoIcons.heart, size: 21),

          UIConstants.width8,

          // text
          Text(
            'Pegaboarded by adam, ronald and others',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}
