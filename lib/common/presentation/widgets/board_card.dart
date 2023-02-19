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
    this.size = 185,
    this.addPegBoard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // elements
        Flexible(
          child: Container(
            height: size,
            width: size,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: addPegBoard
                ? const Center(
                    child: Icon(Icons.add_circle_outline_rounded),
                  )
                : Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    runAlignment: WrapAlignment.spaceBetween,
                    children: Dummy.pegaboardimages
                        .map((image) => Image.network(
                              image,
                              fit: BoxFit.fill,
                              height: 90.5,
                              width: 90.5,
                            ))
                        .toList(),
                  ),
          ),
        ),

        // title
        Flexible(
          child: SizedBox(
              height: 50,
              width: size,
              child: Text(
                title,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
        )
      ],
    );
  }
}
