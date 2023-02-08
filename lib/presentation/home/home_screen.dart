import 'package:flutter/material.dart';
import '../core/constants/ui_constants.dart';
import 'widgets/activity_view.dart';
import 'widgets/explore_view.dart';
import '../widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // tab bar heads
    final tabs = <Widget>[TabText('Activity'), TabText('Explore')];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: CustomAppBar.withTabBar(tabs: tabs),
        
        body: const Padding(
          padding: EdgeInsets.all(15),

          /// children length and tabs count must be equal
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

class TabText extends Text {
  TabText(super.data, {super.key}) : super(style: UIConstants.tabBarTextStyle);
}
