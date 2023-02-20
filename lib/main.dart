import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'injection.dart';
import 'core/navigation/app_router.gr.dart';
import 'common/presentation/responsive.dart';

Future<void> main() async {
  /// singletons, factories ...
  await initInjection();

  //
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = sl<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // app options
      debugShowCheckedModeBanner: false,
      title: 'Peggy',

      // routing
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),

      // themes
      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme: GoogleFonts.cabinTextTheme(Theme.of(context).textTheme),
      ),

      // add responsiveness to the application
      // child will came from the approuter
      builder: (_, child) => Responsive(child: child!),
    );
  }
}