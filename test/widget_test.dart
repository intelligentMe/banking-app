import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:basic_banking/screens/login.dart';

void main() {
  testWidgets('Home widget renders correctly and contains expected elements', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: Home()));

    // Verify that the "Basic Banking" text is displayed.
    expect(find.text('Basic Banking'), findsOneWidget);

    // Verify that the "Sign in with Google" button is present.
    expect(find.text('Sign in with Google'), findsOneWidget);

    // Verify that the "by vivek9patel" text is displayed.
    expect(find.text('by vivek9patel'), findsOneWidget);

    // Verify that the button's child includes the Google logo.
    expect(find.byWidgetPredicate(
      (widget) =>
        widget is Row &&
        widget.children.any((child) =>
          child is Image && child.image == AssetImage("images/google_logo.png")
        ),
      description: 'Google logo should be present in the button',
    ), findsOneWidget);
  });
}

