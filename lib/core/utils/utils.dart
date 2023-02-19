import 'package:flutter/material.dart';

class Utils {
  static final drawerKey = GlobalKey<ScaffoldState>();

  ///   Opens the [Drawer] (if any).
  ///
  /// If the scaffold has a non-null [Scaffold.drawer], this function will cause the drawer to begin its entrance animation.
  ///
  /// Normally this is not needed since the [Scaffold] automatically shows an appropriate [IconButton], and handles the edge-swipe gesture, to show the drawer.
  static void openDrawer() => drawerKey.currentState?.openDrawer();
}

extension PlaceHolder on num {
  /// placeholder height
  SizedBox get pH => SizedBox(height: toDouble());

  // placeholder width
  SizedBox get pW => SizedBox(width: toDouble());

  // placeholder square
  SizedBox get pS => SizedBox(height: toDouble(), width: toDouble());
}
