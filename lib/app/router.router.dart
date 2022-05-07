// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../view/home_screen.dart';
import '../view/news_api.dart';
import '../view/secondscreen.dart';

class Routes {
  static const String homeScreen = '/';
  static const String secondScreen = '/second-screen';
  static const String news = '/News';
  static const all = <String>{
    homeScreen,
    secondScreen,
    news,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.secondScreen, page: SecondScreen),
    RouteDef(Routes.news, page: News),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeScreen(),
        settings: data,
      );
    },
    SecondScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const SecondScreen(),
        settings: data,
      );
    },
    News: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const News(),
        settings: data,
      );
    },
  };
}
