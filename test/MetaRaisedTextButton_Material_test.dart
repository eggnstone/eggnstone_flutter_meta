import 'package:eggnstone_flutter_meta/Meta.dart';
import 'package:eggnstone_flutter_meta/MetaDesign.dart';
import 'package:eggnstone_flutter_meta/MetaRaisedTextButton.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'TestTools.dart';

const Color TEST_COLOR_LIGHT = Colors.yellow;
const Color TEST_COLOR_DARK = Colors.brown;
const String TEST_TEXT = 'This is a test';

void main()
{
    testWidgets('MetaDesign.Material -> RaisedButton', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('MetaRaisedTextButton_Material_DefaultColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(ElevatedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Material/DefaultColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedTextButton_Material_DefaultColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(ElevatedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Material/DefaultColor_DarkTheme.png'));
    });

    testWidgets('MetaRaisedTextButton_Material_LightColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_LIGHT,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(ElevatedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Material/LightColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedTextButton_Material_LightColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_LIGHT,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(ElevatedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Material/LightColor_DarkTheme.png'));
    });

    testWidgets('MetaRaisedTextButton_Material_DarkColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_DARK,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(ElevatedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Material/DarkColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedTextButton_Material_DarkColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR_DARK,
            child: MetaRaisedTextButton(
                text: TEST_TEXT,
                onPressed: ()
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(ElevatedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedTextButton/Material/DarkColor_DarkTheme.png'));
    });
}
