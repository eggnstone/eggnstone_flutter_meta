import 'package:eggnstone_flutter_meta/Meta.dart';
import 'package:eggnstone_flutter_meta/MetaDesign.dart';
import 'package:eggnstone_flutter_meta/MetaRaisedIconAndTextButton.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'TestTools.dart';

const Color TEST_COLOR_LIGHT = Colors.yellow;
const Color TEST_COLOR_DARK = Colors.brown;
const String TEST_TEXT = 'This is a test';
const Icon TEST_ICON = Icon(Icons.check_circle);

void main()
{
    testWidgets('MetaDesign.Cupertino -> CupertinoButton', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaRaisedIconAndTextButton(
                icon: TEST_ICON,
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        expect(find.byType(CupertinoButton), findsOneWidget);
    });

    testWidgets('MetaRaisedIconAndTextButton_Cupertino_DefaultColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaRaisedIconAndTextButton(
                icon: TEST_ICON,
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Cupertino/DefaultColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Cupertino_DefaultColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaRaisedIconAndTextButton(
                icon: TEST_ICON,
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Cupertino/DefaultColor_DarkTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Cupertino_LightColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_LIGHT,
            child: MetaRaisedIconAndTextButton(
                icon: TEST_ICON,
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Cupertino/LightColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Cupertino_LightColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_LIGHT,
            child: MetaRaisedIconAndTextButton(
                icon: TEST_ICON,
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Cupertino/LightColor_DarkTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Cupertino_DarkColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_DARK,
            child: MetaRaisedIconAndTextButton(
                icon: TEST_ICON,
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Cupertino/DarkColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Cupertino_DarkColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_DARK,
            child: MetaRaisedIconAndTextButton(
                icon: TEST_ICON,
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Cupertino/DarkColor_DarkTheme.png'));
    });
}
