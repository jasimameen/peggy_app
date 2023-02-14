import 'package:flutter/material.dart';

import '../../../../core/constants/ui_constants.dart';
import '../../../../core/presentation/widgets/app_bar.dart';
import '../widgets/activity_view.dart';
import '../widgets/explore_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // tab bar heads
    final tabs = <Widget>[TabText('Activity'), TabText('Explore')];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(

        //
        appBar: CustomAppBar.withTabBar(tabs: tabs),

        // layout starts here
        body: const Padding(
          padding: EdgeInsets.all(15),

          /// children.length and tab count must be equal
          child: TabBarView(
            children: [
              HomeActivityTabView(),
              HomeExploreTabView(),
            ],
          ),
        ),
      ),
    );
  }
}

/// text show up in the tab bar
class TabText extends Text {
  TabText(super.data, {super.key}) : super(style: UIConstants.tabBarTextStyle);
}
