import 'package:flutter/material.dart';
import '../../core/presentation/widgets/app_bar.dart';
import '../../core/presentation/widgets/board_card.dart';

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
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 45,
          ),
          itemBuilder: (context, index) => PegBoardCard(
            size: 180,
            title: index != 4 ? 'My First Pegboard $index' : 'New Pegboard',
            addPegBoard: index == 4, // true when last item occurs
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}
