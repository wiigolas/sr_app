import 'package:flutter_test/flutter_test.dart';
import 'package:sr_app/exports/exports.dart';

void main() {
  test('Test episodeTitle with a long title', () {
    const String longTitle =
        'This is a long episode title that needs to be truncated';
    final String result = episodeTitle(longTitle);

    expect(result, 'This is a long episode title that needs');
  });

  test('Test episodeTitle with a short title', () {
    const String shortTitle = 'Short Title';
    final String result = episodeTitle(shortTitle);

    expect(result, shortTitle);
  });

  test('Test episodeTitle with an empty title', () {
    const String emptyTitle = '';
    final String result = episodeTitle(emptyTitle);

    expect(result, '');
  });

  test('Test episodeTitle with a title of exactly 40 characters', () {
    const String title = 'Exactly 40 characters long title!!!!!!!!';
    final String result = episodeTitle(title);

    expect(result, title);
  });
}
