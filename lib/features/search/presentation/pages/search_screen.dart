import 'package:flutter/cupertino.dart';
import 'package:peggy/common/presentation/widgets/app_bar.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/presentation/widgets/section_title.dart';
import '../widgets/suggession_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CustomCupertinoNabBar(context: context),
      child: SafeArea(
        child: Column(
          children: [

            const SectionTitle(
              title: 'Recently Viewed',
              trailing: Text("Clear All ", style: UIConstants.underlineText),
            ),
            UIConstants.height10,

            // list of items
            Flexible(
              child: ListView.separated(
                key: UniqueKey(),
                itemCount: 10,
                itemBuilder: (_, index) {
                  return index.isEven
                      ? SuggestionCard.collecter(title: 'Art collector $index')
                      : SuggestionCard.artist(title: 'Artist $index');
                },
                separatorBuilder: (_, __) => UIConstants.height8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
