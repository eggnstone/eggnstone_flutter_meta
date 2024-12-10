import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'TestTools.dart';

void main()
{
    testWidgets('MetaDesign.Material -> MaterialSwitch', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.light;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR_PREVIOUSLY_NULL,
                child: const MetaSwitch(
                    value: false,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            expect(find.byType(Switch), findsOneWidget);
        }
    );

    testWidgets('MetaSwitch_Material_DefaultColor_LightTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.light;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR_PREVIOUSLY_NULL,
                child: const MetaSwitch(
                    value: true,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(Switch);
            await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/DefaultColor_LightTheme.png'));
        }
    );

    testWidgets('MetaSwitch_Material_DefaultColor_DarkTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.dark;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR_PREVIOUSLY_NULL,
                child: const MetaSwitch(
                    value: true,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(Switch);
            await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/DefaultColor_DarkTheme.png'));
        }
    );

    testWidgets('MetaSwitch_Material_CustomColor_LightTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.light;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR,
                child: const MetaSwitch(
                    value: true,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(Switch);
            await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/CustomColor_LightTheme.png'));
        }
    );

    testWidgets('MetaSwitch_Material_CustomColor_DarkTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.dark;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR,
                child: const MetaSwitch(
                    value: true,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(Switch);
            await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Material/CustomColor_DarkTheme.png'));
        }
    );
}
