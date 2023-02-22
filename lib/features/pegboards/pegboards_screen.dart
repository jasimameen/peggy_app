import 'package:flutter/material.dart';
import '../../common/presentation/widgets/app_bar.dart';
import 'widgets/board_card.dart';

class PegboardScreen extends StatelessWidget {
  const PegboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: false,
        label: 'Pegboards',
        trailing: const Icon(Icons.add),
      ),

      /// grid view
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Wrap(
            children: List.generate(
              5,
              (index) => AspectRatio(
                aspectRatio: 1 / 1,
                child: PegBoardCard(
                  title:
                      index != 4 ? 'My First Pegboard $index' : 'New Pegboard',
                  addPegBoard: index == 4, // true when last item occurs
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
