import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peggy/injection.dart';

import '../../../../common/constants/ui_constants.dart';
import '../../../../common/presentation/widgets/app_bar.dart';
import '../bloc/home_bloc.dart';
import '../widgets/activity_view.dart';
import '../widgets/explore_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // tab bar heads
    final tabs = <Widget>[TabText('Activity'), TabText('Explore')];

    return BlocProvider(
      create: (context) => sl<HomeBloc>(),
      child: DefaultTabController(
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
      ),
    );
  }
}

/// text show up in the tab bar
class TabText extends Text {
  TabText(super.data, {super.key}) : super(style: UIConstants.tabBarTextStyle);
}
