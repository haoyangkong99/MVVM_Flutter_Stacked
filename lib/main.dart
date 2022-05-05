import 'package:flutter/material.dart';
import 'package:mvvm_flutter_stacked/app/router.locator.dart';
import 'package:stacked/stacked_annotations.dart';
import 'app/router.router.dart';
import 'package:mvvm_flutter_stacked/view/home_screen.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
