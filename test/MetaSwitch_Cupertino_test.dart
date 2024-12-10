import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'TestTools.dart';

void main()
{
    testWidgets('MetaDesign.Cupertino -> CupertinoSwitch', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Cupertino;
            Meta.brightness = Brightness.light;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR_PREVIOUSLY_NULL,
                child: const MetaSwitch(
                    value: false,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            expect(find.byType(CupertinoSwitch), findsOneWidget);
        }
    );

    testWidgets('MetaSwitch_Cupertino_DefaultColor_LightTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Cupertino;
            Meta.brightness = Brightness.light;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR_PREVIOUSLY_NULL,
                child: const MetaSwitch(
                    value: true,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(CupertinoSwitch);
            await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Cupertino/DefaultColor_LightTheme.png'));
        }
    );

    testWidgets('MetaSwitch_Cupertino_DefaultColor_DarkTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Cupertino;
            Meta.brightness = Brightness.dark;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR_PREVIOUSLY_NULL,
                child: const MetaSwitch(
                    value: true,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(CupertinoSwitch);
            await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Cupertino/DefaultColor_DarkTheme.png'));
        }
    );

    testWidgets('MetaSwitch_Cupertino_CustomColor_LightTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Cupertino;
            Meta.brightness = Brightness.light;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR,
                child: const MetaSwitch(
                    value: true,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(CupertinoSwitch);
            await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Cupertino/CustomColor_LightTheme.png'));
        }
    );

    testWidgets('MetaSwitch_Cupertino_CustomColor_DarkTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Cupertino;
            Meta.brightness = Brightness.dark;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR,
                child: const MetaSwitch(
                    value: true,
                    onChanged: TestTools.dummyOnChangedBool
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(CupertinoSwitch);
            await expectLater(finder, matchesGoldenFile('golden/MetaSwitch/Cupertino/CustomColor_DarkTheme.png'));
        }
    );
}
