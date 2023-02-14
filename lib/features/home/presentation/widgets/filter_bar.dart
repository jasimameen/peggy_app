import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/presentation/widgets/profile_avathar.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chips = <Widget>[
      FilterChip(label: 'Active Auction (0)'),
      FilterChip(label: 'Asking Price (107)'),
      FilterChip(label: 'Following (6)'),
      FilterChip(label: 'Landscape Orientaion (58)'),
      FilterChip(label: 'Landscape Orientaion (118)'),
      FilterChip(label: 'Large > 80cm (69)'),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          // chips
          Flexible(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: chips
                    .map((chip) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: chip,
                        ))
                    .toList(),
              ),
            ),
          ),

          // filter button
         const  ProfileAvathar(
            backgroundColor: Colors.white,
            child:  Icon(CupertinoIcons.arrow_up_arrow_down),
          )
        ],
      ),
    );
  }
}

class FilterChip extends Chip {
  FilterChip({
    super.key,
    required String label,
  }) : super(
          label: Text(label),
          backgroundColor: Pallete.offWhite,
        );
}
