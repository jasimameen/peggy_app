import 'package:flutter/material.dart';
import 'package:peggy/presentation/core/constants/asset_constants.dart';
import 'package:peggy/presentation/core/constants/constants.dart';
import 'package:peggy/presentation/core/constants/ui_constants.dart';

class PegaBoardCard extends StatelessWidget {
  const PegaBoardCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // elements
        SizedBox(
          height: 125,
          width: 125,
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            children: Dummy.pegaboardimages,
          ),
        ),

        UIConstants.height10,

        // title
        const Text(
          'floral still life',
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
