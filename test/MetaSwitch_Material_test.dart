import 'package:eggnstone_flutter_meta/Meta.dart';
import 'package:eggnstone_flutter_meta/MetaDesign.dart';
import 'package:eggnstone_flutter_meta/MetaSwitch.dart';
import 'package:flutter/material.dart';

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

        expect(find.byType(Switch), findsOneWidget);
    });

    testWidgets('MetaSwitch_Material_DefaultColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
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

        final Finder finder = find.byType(Switch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/DefaultColor_LightTheme.png'));
    });

    testWidgets('MetaSwitch_Material_DefaultColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
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

        final Finder finder = find.byType(Switch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/DefaultColor_DarkTheme.png'));
    });

    testWidgets('MetaSwitch_Material_CustomColor_LightTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
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

        final Finder finder = find.byType(Switch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/CustomColor_LightTheme.png'));
    });

    testWidgets('MetaSwitch_Material_CustomColor_DarkTheme', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Material;
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

        final Finder finder = find.byType(Switch);
        await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/CustomColor_DarkTheme.png'));
    });
}
