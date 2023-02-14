import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'profile_avathar.dart';

class PostCard extends StatelessWidget {
  final List<String> images;
  const PostCard({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 600,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // title
          PostCardTitleBar(images: images),

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
  final List<String> images;

  const PostCardTitleBar({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const greyTextStyle = TextStyle(color: Colors.grey);
    return SizedBox(
      height: 57,
      child: Row(
        children: [
          // profile photo
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5, bottom: 5),
                child: ProfileAvathar.image(image: images[0], radius: 15),
              ),

              // show second avathar only when two items
              if (images.length >= 2)
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
                )
              : const Text.rich(TextSpan(
                  style: TextStyle(fontSize: 12),
                  children: [
                    TextSpan(text: 'Juan Uribe'),
                    TextSpan(text: ' and ', style: greyTextStyle),
                    TextSpan(text: 'SGR Galeria')
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
