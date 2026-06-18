import 'package:flutter_test/flutter_test.dart';

import 'package:pawplan/main.dart';

void main() {
  testWidgets('App starts on login screen', (WidgetTester tester) async {
    await tester.pumpWidget(const PawPlanApp());

    expect(find.text('Paw Plan'), findsOneWidget);
    expect(find.text('Login'), findsWidgets);
    expect(find.text('Create an account'), findsOneWidget);
  });
}
