import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'TestTools.dart';

const Color TEST_COLOR_LIGHT = Colors.yellow;
const Color TEST_COLOR_DARK = Colors.brown;
const Widget kTestWidget = SizedBox(width: 10, height: 10);

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
            child: MetaRaisedWidgetButton(
                child: kTestWidget,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        expect(find.byType(CupertinoButton), findsOneWidget);
    });

    testWidgets('MetaRaisedWidgetButton_Cupertino_DefaultColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaRaisedWidgetButton(
                child: kTestWidget,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedWidgetButton/Cupertino/DefaultColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedWidgetButton_Cupertino_DefaultColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaRaisedWidgetButton(
                child: kTestWidget,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedWidgetButton/Cupertino/DefaultColor_DarkTheme.png'));
    });

    testWidgets('MetaRaisedWidgetButton_Cupertino_LightColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_LIGHT,
            child: MetaRaisedWidgetButton(
                child: kTestWidget,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedWidgetButton/Cupertino/LightColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedWidgetButton_Cupertino_LightColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_LIGHT,
            child: MetaRaisedWidgetButton(
                child: kTestWidget,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedWidgetButton/Cupertino/LightColor_DarkTheme.png'));
    });

    testWidgets('MetaRaisedWidgetButton_Cupertino_DarkColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_DARK,
            child: MetaRaisedWidgetButton(
                child: kTestWidget,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedWidgetButton/Cupertino/DarkColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedWidgetButton_Cupertino_DarkColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_DARK,
            child: MetaRaisedWidgetButton(
                child: kTestWidget,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedWidgetButton/Cupertino/DarkColor_DarkTheme.png'));
    });
}
