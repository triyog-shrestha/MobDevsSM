import 'package:flutter_test/flutter_test.dart';
import 'package:smflutter/main.dart';
import 'package:smflutter/pages/dashboard.dart';

void main() {
  testWidgets('Dashboard smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that Dashboard is rendered.
    expect(find.byType(Dashboard), findsOneWidget);
  });
}


