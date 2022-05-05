import 'package:flutter/material.dart';
import 'package:mvvm_flutter_stacked/view/secondscreenviewmode.dart';
import 'package:stacked/stacked.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondViewModel>.reactive(
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Second"),
            ),
            body: Column(
              children: [Text(model.x), Text(model.y)],
            ),
          );
        },
        viewModelBuilder: () => SecondViewModel());
  }
}
