import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../common/presentation/widgets/profile_avathar.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const filterChips = <Widget>[
      SelectionChip(label: 'Active Auction (0)'),
      SelectionChip(label: 'Asking Price (107)'),
      SelectionChip(label: 'Following (6)'),
      SelectionChip(label: 'Landscape Orientaion (58)'),
      SelectionChip(label: 'Landscape Orientaion (118)'),
      SelectionChip(label: 'Large > 80cm (69)'),
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
                children: filterChips
                    .map((chip) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: chip,
                        ))
                    .toList(),
              ),
            ),
          ),

          // filter button
          const ProfileAvathar(
            backgroundColor: Colors.white,
            child:
                Icon(CupertinoIcons.arrow_up_arrow_down, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class SelectionChip extends StatelessWidget {
  const SelectionChip({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    bool selected = false;

    return StatefulBuilder(
      builder: (BuildContext context, setState) => FilterChip(
        label: Text(label),
        selected: selected,
        onSelected: (_) => setState(() => selected = !selected),
      ),
    );
  }
}
