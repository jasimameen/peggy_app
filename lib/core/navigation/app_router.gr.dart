// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/base/base_app.dart' as _i1;
import '../../features/search/presentation/pages/search_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    BaseScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BaseScreen(),
      );
    },
    SearchScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SearchScreen(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          BaseScreen.name,
          path: '/',
        ),
        _i3.RouteConfig(
          SearchScreen.name,
          path: '/search-screen',
        ),
      ];
}

/// generated route for
/// [_i1.BaseScreen]
class BaseScreen extends _i3.PageRouteInfo<void> {
  const BaseScreen()
      : super(
          BaseScreen.name,
          path: '/',
        );

  static const String name = 'BaseScreen';
}

/// generated route for
/// [_i2.SearchScreen]
class SearchScreen extends _i3.PageRouteInfo<void> {
  const SearchScreen()
      : super(
          SearchScreen.name,
          path: '/search-screen',
        );

  static const String name = 'SearchScreen';
}
