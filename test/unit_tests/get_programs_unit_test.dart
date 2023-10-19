import 'package:flutter_test/flutter_test.dart';
import 'package:sr_app/exports/exports.dart';

void main() {
  test('getPrograms should convert a list of Program objects to Widgets', () {
    final List<Program> testPrograms = [
      Program(
        description: 'Program 1',
        id: 1,
        image: 'image1.jpg',
      ),
      Program(
        description: 'Program 2',
        id: 2,
        image: 'image2.jpg',
      ),
      Program(
        description: 'Program 3',
        id: 3,
        image: 'image3.jpg',
      ),
    ];

    final List<Widget> result = getPrograms(testPrograms);

    expect(result.length, testPrograms.length);

    for (final widget in result) {
      expect(widget, isA<ProgramsCard>());
    }
  });
}
