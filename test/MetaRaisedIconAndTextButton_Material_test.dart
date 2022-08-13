import 'package:eggnstone_flutter_meta/Meta.dart';
import 'package:eggnstone_flutter_meta/MetaDesign.dart';
import 'package:eggnstone_flutter_meta/MetaRaisedIconAndTextButton.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'TestTools.dart';

const Color TEST_COLOR_LIGHT = Colors.yellow;
const Color TEST_COLOR_DARK = Colors.brown;
const String TEST_TEXT = 'This is a test';
const Icon TEST_ICON = Icon(Icons.check_circle);

void main()
{
    testWidgets('MetaDesign.Material -> RaisedButton', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
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

        expect(find.byType(RaisedButton), findsOneWidget);
    });

    testWidgets('MetaRaisedIconAndTextButton_Material_DefaultColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
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

        Finder finder = find.byType(RaisedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/DefaultColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Material_DefaultColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.dark;

        Widget testWidget = TestTools.createMetaApp(
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

        Finder finder = find.byType(RaisedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/DefaultColor_DarkTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Material_LightColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
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

        Finder finder = find.byType(RaisedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/LightColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Material_LightColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.dark;

        Widget testWidget = TestTools.createMetaApp(
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

        Finder finder = find.byType(RaisedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/LightColor_DarkTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Material_DarkColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
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

        Finder finder = find.byType(RaisedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/DarkColor_LightTheme.png'));
    });

    testWidgets('MetaRaisedIconAndTextButton_Material_DarkColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.dark;

        Widget testWidget = TestTools.createMetaApp(
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

        Finder finder = find.byType(RaisedButton);
        await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/DarkColor_DarkTheme.png'));
    });
}
