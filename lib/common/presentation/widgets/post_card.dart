import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../constants/constants.dart';
import 'profile_avathar.dart';

class PostCard extends StatelessWidget {
  final List<String> profileImages;
  final String username;
  final String postImageUrl;

  PostCard({
    Key? key,
    required String profileImage,
    required this.username,
    required this.postImageUrl,
  })  : profileImages = [profileImage],
        super(key: key);

  const PostCard.stacked({
    Key? key,
    required this.profileImages,
    required this.username,
    required this.postImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 600,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // title
          PostCardTitleBar(username: username, images: profileImages),

          // image
          Flexible(
            child: Placeholder(
              child: Image.network(
                postImageUrl,
                fit: BoxFit.fitWidth,
                frameBuilder: (ctx, child, frame, _) => frame != null
                    ? child
                    : Lottie.asset(
                        LottiFiles.aristDrawing,
                        height: 400,
                        width: double.maxFinite,
                        fit: BoxFit.fill,
                      ),
              ),
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
  final List<String> images;
  final String username;

  const PostCardTitleBar({
    Key? key,
    required this.images,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const greyTextStyle = TextStyle(color: Colors.grey);
    bool showSecondProfile = images.length >= 2;

    return SizedBox(
      height: 57,
      child: Row(
        children: [
          // profile photo
          Stack(
            children: [
              Padding(
                padding: showSecondProfile
                    ? const EdgeInsets.only(right: 5, bottom: 5)
                    : EdgeInsets.zero,
                child: ProfileAvathar.image(image: images[0], radius: 15),
              ),

              // show second avathar only when two items
              if (showSecondProfile)
                Container(
                    margin: const EdgeInsets.only(left: 8, top: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    child: ProfileAvathar.image(image: images[1], radius: 15)),
            ],
          ),

          UIConstants.width8,

          // title
          images.length <= 1
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // upper text
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(fontSize: 10),
                        children: [
                          TextSpan(text: username),
                          const TextSpan(text: '. 2m', style: greyTextStyle),
                        ],
                      ),
                    ),

                    UIConstants.height5,

                    // lower text
                    const Text.rich(TextSpan(
                      style: TextStyle(fontSize: 12),
                      children: [
                        TextSpan(text: 'Pegaboarded'),
                        TextSpan(text: ' in ', style: greyTextStyle),
                        TextSpan(text: 'My First Pegaboard')
                      ],
                    )),
                  ],
                )
              : Text.rich(TextSpan(
                  style: const TextStyle(fontSize: 12),
                  children: [
                    TextSpan(text: username),
                    const TextSpan(text: ' and ', style: greyTextStyle),
                    const TextSpan(text: 'MJP GalArts')
                  ],
                )),
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
        children: [
          // heart
          HeartIcon(liked: false),

          UIConstants.width8,

          // text
          const Text(
            'Pegaboarded by adam, ronald and others',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}

class HeartIcon extends StatelessWidget {
  HeartIcon({
    super.key,
    this.liked = false,
  });

  bool liked;

  @override
  Widget build(BuildContext context) {
    final iconColor = liked ? Colors.red : null;
    double turns = 0;
    
    return StatefulBuilder(
      builder: (BuildContext context, setState) {
        return AnimatedRotation(
          turns: turns,
          duration: const Duration(milliseconds: 300),
          child: IconButton(
            onPressed: () => setState(() {
              liked = !liked;
              turns += 1;
            }),
            icon: Icon(
              liked ? CupertinoIcons.heart : CupertinoIcons.heart_fill,
              color: iconColor,
              size: 21,
            ),
          ),
        );
      },
    );
  }
}
