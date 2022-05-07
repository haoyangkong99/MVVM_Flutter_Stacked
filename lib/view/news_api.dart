import 'package:flutter/material.dart';
import 'package:mvvm_flutter_stacked/model/articles.dart';
import 'package:mvvm_flutter_stacked/viemodel/newsAPIViewModel.dart';
import 'package:stacked/stacked.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewsApiViemModel>.reactive(
      viewModelBuilder: () => NewsApiViemModel(),
      builder: (context, model, child) {
        List<Article>? list = model.data;
        print(list!.length);
        return Scaffold(
            appBar: AppBar(
              title: Text("News Api"),
            ),
            body: Container(
              child: ListView.builder(
                itemCount: 9,
                itemBuilder: ((context, index) {
                  return InkWell(
                    child: ListTile(
                      title: Text(list![index].title),
                    ),
                  );
                }),
              ),
            ));
      },
    );
  }
}
