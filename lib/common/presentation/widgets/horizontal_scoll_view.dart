// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants/ui_constants.dart';

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

// title and trailing view all button
class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    this.trailing,
  }) : super(key: key);

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}