import 'package:flutter_news_app/news_change_notifier.dart';
import 'package:flutter_news_app/news_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNewsService extends Mock implements NewsService {}

void main() {
  late NewsChangeNotifier sut;
  late MockNewsService mockNewsService;

  setUp(() {
    mockNewsService = MockNewsService();
    sut = NewsChangeNotifier(mockNewsService);
  });

  test("initial values are correct", () {
    expect(sut.articles, []);
    expect(sut.isLoading, false);
  });

  group('getArticles', () {
    test('gets articles using news service', () async {
      when(() => mockNewsService.getArticles()).thenAnswer((_) async => []);
      await sut.getArticles();
      verify(() => mockNewsService.getArticles()).called(1);
    });

    
  });
}
