import 'package:eggnstone_flutter_meta/Meta.dart';
import 'package:eggnstone_flutter_meta/MetaDesign.dart';
import 'package:eggnstone_flutter_meta/MetaSwitch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'TestTools.dart';

const Color TEST_COLOR = Colors.pink;

void main()
{
    testWidgets('MetaDesign.Material -> MaterialSwitch', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: null,
            child: MetaSwitch(
                value: false,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);

        expect(find.byType(Switch), findsOneWidget);
    });

    testWidgets('MetaSwitch_Material_LightTheme_DefaultColor', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: null,
            child: MetaSwitch(
                value: true,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);
        Finder finder = find.byType(Switch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/LightTheme_DefaultColor.png'));
    });

    testWidgets('MetaSwitch_Material_DarkTheme_DefaultColor', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.dark;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: null,
            child: MetaSwitch(
                value: true,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);
        Finder finder = find.byType(Switch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/DarkTheme_DefaultColor.png'));
    });

    testWidgets('MetaSwitch_Material_LightTheme_CustomColor', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.light;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: TEST_COLOR,
            child: MetaSwitch(
                value: true,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);
        Finder finder = find.byType(Switch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/LightTheme_CustomColor.png'));
    });

    testWidgets('MetaSwitch_Material_DarkTheme_CustomColor', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
        Meta.brightness = Brightness.dark;

        Widget testWidget = TestTools.createMetaApp(
            primaryColor: TEST_COLOR,
            child: MetaSwitch(
                value: true,
                onChanged: (_)
                {}
            )
        );

        await tester.pumpWidget(testWidget);
        Finder finder = find.byType(Switch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/DarkTheme_CustomColor.png'));
    });
}
