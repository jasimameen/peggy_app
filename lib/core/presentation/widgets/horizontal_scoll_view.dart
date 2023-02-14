// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants/ui_constants.dart';
import 'section_title.dart';

typedef ItemBuilder = Widget Function(BuildContext context, int index);

class HorizontalScrollView extends StatelessWidget {
  final String title;
  final ItemBuilder itemBuilder;
  final ItemBuilder? separatorBuilder;
  final Widget? trailing;
  final int itemCount;
  final double? viewHeight;
  final bool viewAllTrailing;
  const HorizontalScrollView({
    Key? key,
    required this.title,
    required this.itemBuilder,
    this.separatorBuilder,
    this.trailing,
    required this.itemCount,
    this.viewHeight,
    this.viewAllTrailing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UIConstants.height8,

        // section title
        SectionTitle(
          title: title,
          trailing: trailing == null && viewAllTrailing
              ? const Text("View All ", style: UIConstants.underlineText)
              : trailing,
        ),

        UIConstants.height20,

        // scroll view
        LimitedBox(
          maxHeight: viewHeight ?? double.maxFinite,
          maxWidth: double.maxFinite,
          child: ListView.separated(
            itemBuilder: itemBuilder,
            separatorBuilder:
                separatorBuilder ?? (_, __) => const SizedBox(width: 10),
            itemCount: itemCount,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
          ),
        ),

        UIConstants.height20,
      ],
    );
  }
}
