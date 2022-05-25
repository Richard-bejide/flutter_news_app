import 'package:flutter/material.dart';
import 'package:flutter_news_app/views/news_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_news_app/services/news_service.dart';
import 'package:flutter_news_app/view_models/news_change_notifier.dart';

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
