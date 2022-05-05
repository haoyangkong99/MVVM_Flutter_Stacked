import 'package:flutter/material.dart';
import 'package:mvvm_flutter_stacked/view/homeviewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) {
          TextEditingController txtname =
              new TextEditingController(text: model.name);
          TextEditingController txtmatric =
              new TextEditingController(text: model.matric);
          return Column(
            children: [
              Text("Name"),
              TextFormField(
                controller: txtname,
                onChanged: (value) {
                  setState(() {
                    model.updateName(txtname.text);
                  });
                  print(model.name);
                },
              ),
              SizedBox(height: 20),
              Text("Matric"),
              TextFormField(
                controller: txtmatric,
              ),
              TextButton(
                  onPressed: () {
                    model.navigateTo();
                  },
                  child: Text("Go to 2nd screen"))
            ],
          );
        },
        viewModelBuilder: () => HomeViewModel());
  }
}
