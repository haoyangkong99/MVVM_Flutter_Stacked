import 'package:mvvm_flutter_stacked/model/articles.dart';
import 'package:stacked/stacked.dart';

import 'package:mvvm_flutter_stacked/services/API_Service.dart';

class NewsApiViemModel extends FutureViewModel<List<Article>> {
  ApiService client = ApiService();
  Future<List<Article>> futureToRun() => getNews();
  Future<List<Article>> getNews() async {
    Future.delayed(Duration(seconds: 3));
    return client.getArticle();
  }
}
