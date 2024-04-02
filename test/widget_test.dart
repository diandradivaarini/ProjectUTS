import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:trial_fp/main.dart';

void main() {
  testWidgets('Navigate to detail screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the home screen is displayed.
    expect(find.text('Profil Fakultas Pertanian'), findsOneWidget);

    // Tap on a program studi to navigate to the detail screen.
    await tester.tap(find.text('S-1 Agroteknologi'));
    await tester.pumpAndSettle(); // Wait for the animation to complete.

    // Verify that the detail screen is displayed.
    expect(find.text('S-1 Agroteknologi'), findsOneWidget);
    expect(find.text('Detail program studi akan ditampilkan di sini.'), findsOneWidget);

    // Navigate back to the home screen.
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle(); // Wait for the animation to complete.

    // Verify that we are back on the home screen.
    expect(find.text('Profil Fakultas Pertanian'), findsOneWidget);
  });
}
