// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kidsgame/main.dart';

void main() {
  testWidgets('Score increments when card is tapped', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our initial score is 0.
    expect(find.text('Score: 0'), findsOneWidget);

    // Tap on the card to simulate increasing score.
    await tester.tap(find.byType(GestureDetector).first);
    await tester.pump();

    // Verify that our score has incremented.
    expect(find.text('Score: 10'), findsOneWidget);
  });
}

