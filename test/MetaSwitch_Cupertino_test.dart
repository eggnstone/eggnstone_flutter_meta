import 'package:eggnstone_flutter_meta/Meta.dart';
import 'package:eggnstone_flutter_meta/MetaDesign.dart';
import 'package:eggnstone_flutter_meta/MetaSwitch.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'TestTools.dart';

const Color TEST_COLOR = Colors.pink;

void main()
{
    testWidgets('MetaDesign.Cupertino -> CupertinoSwitch', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaSwitch(
                value: false,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        expect(find.byType(CupertinoSwitch), findsOneWidget);
    });

    testWidgets('MetaSwitch_Cupertino_DefaultColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaSwitch(
                value: true,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoSwitch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Cupertino/DefaultColor_LightTheme.png'));
    });

    testWidgets('MetaSwitch_Cupertino_DefaultColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: null,
            child: MetaSwitch(
                value: true,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoSwitch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Cupertino/DefaultColor_DarkTheme.png'));
    });

    testWidgets('MetaSwitch_Cupertino_CustomColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.light;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR,
            child: MetaSwitch(
                value: true,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoSwitch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Cupertino/CustomColor_LightTheme.png'));
    });

    testWidgets('MetaSwitch_Cupertino_CustomColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        Meta.brightness = Brightness.dark;

        final Widget testWidget = TestTools.createMetaApp(
            context: null,
            primaryColor: TEST_COLOR,
            child: MetaSwitch(
                value: true,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        final Finder finder = find.byType(CupertinoSwitch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Cupertino/CustomColor_DarkTheme.png'));
    });
}
