import 'package:flutter/material.dart';
import 'package:flutter_news_app/news_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_news_app/news_service.dart';
import 'package:flutter_news_app/news_change_notifier.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => NewsChangeNotifier(NewsService()),
        child: const NewsPage(),
      ),
      title: 'News app',
    );
  }
}
