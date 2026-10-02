import 'package:flutter_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('tapping a book opens the detail screen', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle(); // wait for the async book loading

    expect(find.text('My Books'), findsOneWidget);

    await tester.tap(find.text('Clean Code'));
    await tester.pumpAndSettle(); // wait for the navigation animation

    expect(find.text('Back to list'), findsOneWidget);
  });
}
