import 'package:mvvm_flutter_stacked/model/source_model.dart';

class Article {
  Source source;
  String author, title, description, url, urlToImage, publishedAt, content;
  Article(
      {required this.source,
      required this.author,
      required this.content,
      required this.description,
      required this.publishedAt,
      required this.title,
      required this.url,
      required this.urlToImage});

  factory Article.fromJson(Map<dynamic, dynamic> map) {
    return Article(
        source: Source.fromJson(map["source"]),
        author: map["author"],
        content: map["content"],
        description: map["description"],
        publishedAt: map["publishedAt"],
        title: map["title"],
        url: map["url"],
        urlToImage: map["urlToImage"]);
  }
}
