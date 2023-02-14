// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class PegBoardCard extends StatelessWidget {
  final String title;
  final double size;

  /// Show the new adding button
  final bool addPegBoard;

  const PegBoardCard({
    Key? key,
    required this.title,
    this.size = 125,
    this.addPegBoard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // elements
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: addPegBoard
              ? const Center(
                  child: Icon(Icons.add_circle_outline_rounded),
                )
              : GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  children: Dummy.pegaboardimages,
                ),
        ),

        UIConstants.height10,

        // title
        LimitedBox(
          maxWidth: size * .80,
          child: Text(
            title,
            style:
                const TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis),
          ),
        )
      ],
    );
  }
}
