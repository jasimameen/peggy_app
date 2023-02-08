import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // background image
        Container(
          height: 285,
          width: 345,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage(AssetConstants.artwork1),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Container(
          height: 285,
          width: 345,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(24, 42, 42, 0),
                Color.fromARGB(223, 2, 2, 2),
              ],
            ),
          ),

          //
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // title
              WhiteText(
                'Artist Spotlight',
                fontSize: 12,
              ),

              UIConstants.height8,

              // artist name
              WhiteText(
                'Juan Uribe',
                fontSize: 25,
              ),

              UIConstants.height20,
            ],
          ),
        ),
      ],
    );
  }
}

class WhiteText extends Text {
  WhiteText(String data, {super.key, double? fontSize})
      : super(data,
            style: TextStyle(
                color: Colors.white, fontSize: fontSize, fontFamily: 'Arial'));
}
