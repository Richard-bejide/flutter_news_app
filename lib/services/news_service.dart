// import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_news_app/models/article_model.dart';

class NewsService {
//simulating a remote database
  final _articles = List.generate(
      10,
      (index) => Article(
          // title: lorem(paragraphs: 1, words: 3),
          // content: lorem(paragraphs: 10, words: 500)
          title: 'lorem ipsum dolor',
          content:
              'lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor '));

  Future<List<Article>> getArticles() async {
    await Future.delayed(const Duration(seconds: 1));
    return _articles;
  }
}
