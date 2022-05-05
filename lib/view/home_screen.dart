import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:mvvm_flutter_stacked/view/homebody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Flutter Stacked"),
        centerTitle: true,
      ),
      body: HomeBody(),
    );
  }
}
