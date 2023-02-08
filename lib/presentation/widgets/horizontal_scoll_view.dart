// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:peggy/presentation/core/constants/ui_constants.dart';

typedef ItemBuilder = Widget Function(BuildContext context, int index);

class HorizontalScrollView extends StatelessWidget {
  final String title;
  final ItemBuilder itemBuilder;
  final ItemBuilder? separatorBuilder;
  final int itemCount;
  final double? viewHeight;

  const HorizontalScrollView({
    Key? key,
    required this.title,
    required this.itemBuilder,
    this.separatorBuilder,
    required this.itemCount,
    this.viewHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UIConstants.height8,
        
        // section title
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

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
