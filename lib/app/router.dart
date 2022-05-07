import 'package:flutter/cupertino.dart';
import 'package:mvvm_flutter_stacked/view/home_screen.dart';
import 'package:mvvm_flutter_stacked/view/homebody.dart';
import 'package:mvvm_flutter_stacked/viemodel/homeviewmodel.dart';
import 'package:mvvm_flutter_stacked/view/news_api.dart';
import 'package:mvvm_flutter_stacked/view/secondscreen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomeScreen, initial: true),
  CupertinoRoute(page: SecondScreen),
  MaterialRoute(page: News)
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
])
class AppSetup {}
