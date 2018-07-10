import 'package:audiozitos/audiozitos_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('main Tests', () {
    runIntegrationTests();
  });
}

runIntegrationTests() {
  testWidgets('app should work', (tester) async {
    await tester.pumpWidget(AudiozitosApp());
    expect(find.text('Audiozitos'), findsOneWidget);
  });
}
