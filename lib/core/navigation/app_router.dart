import 'package:auto_route/auto_route.dart';

import '../../features/base/base_app.dart';
import '../../features/search/presentation/pages/search_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: BaseScreen, initial: true),
    AutoRoute(page: SearchScreen),
  ],
)
class $AppRouter {}
