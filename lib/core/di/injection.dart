import 'package:get_it/get_it.dart';

import '../navigation/app_router.gr.dart';


/// service locater
///
/// ``` dart
/// //eg for accessing autorouter
/// final router = sl<AppRouter>(); // Router instance
/// router.pop(); // usage
/// ```
final sl = GetIt.I;

Future<void> initInjection() async {
  // navigation
  sl.registerSingleton<AppRouter>(AppRouter());
}
