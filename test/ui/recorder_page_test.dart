import 'package:audiozitos/shared/containers/circle_icon_button.dart';
import 'package:audiozitos/ui/recorder_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RecorderPage Tests', () {
    runIntegrationTests();
    runUnitTests();
  });
}

runIntegrationTests() {
  testWidgets('widget integration test 1', (WidgetTester tester) async {
    var value = 0.0;

    // Tells the tester to build a UI based on the widget tree passed to it
    await tester.pumpWidget(
      StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return MaterialApp(
            home: Material(
              child: RecorderPage(),
            ),
          );
        },
      ),
    );

    expect(value, equals(0.0));

    // Taps on the widget found by key
    await tester.tap(find.byElementType(CircleIconButton));

    // Verifies that the widget updated the value correctly
    expect(value, equals(0.5));
  }, skip: true);
}

runUnitTests() {
  test('answer unit test 1', () {
    var answer = 42;
    expect(answer, 42);
  });
}
