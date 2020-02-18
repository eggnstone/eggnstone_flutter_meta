import 'package:eggnstone_flutter_meta/Meta.dart';
import 'package:eggnstone_flutter_meta/MetaDesign.dart';
import 'package:eggnstone_flutter_meta/MetaRaisedTextButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'TestTools.dart';

const Color TEST_COLOR_LIGHT = Colors.yellow;
const Color TEST_COLOR_DARK = Colors.brown;
const String TEST_TEXT = 'This is a test';

void main()
{
    testWidgets('MetaDesign.Cupertino -> CupertinoButton', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: null,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        expect(find.byType(CupertinoButton), findsOneWidget);
    });

    testWidgets('MetaRaisedTextButton_Cupertino_LightTheme_DefaultColor', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: null,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);
        Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Cupertino/LightTheme_DefaultColor.png'));
    });

    testWidgets('MetaRaisedTextButton_Cupertino_DarkTheme_DefaultColor', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: null,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);
        Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Cupertino/DarkTheme_DefaultColor.png'));
    });

    testWidgets('MetaRaisedTextButton_Cupertino_LightTheme_LightColor', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: TEST_COLOR_LIGHT,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);
        Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Cupertino/LightTheme_LightColor.png'));
    });

    testWidgets('MetaRaisedTextButton_Cupertino_DarkTheme_LightColor', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: TEST_COLOR_LIGHT,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);
        Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Cupertino/DarkTheme_LightColor.png'));
    });
}
