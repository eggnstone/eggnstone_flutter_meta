import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
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

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR_PREVIOUSLY_NULL,
                child: const MetaRaisedIconAndTextButton(
                    icon: TEST_ICON,
                    text: TEST_TEXT,
                    onPressed: TestTools.dummyOnPressed
                )
            );

            await tester.pumpWidget(testWidget);

            expect(find.byType(ElevatedButton), findsOneWidget);
        }
    );

    testWidgets('MetaRaisedIconAndTextButton_Material_DefaultColor_LightTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.light;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR_PREVIOUSLY_NULL,
                child: const MetaRaisedIconAndTextButton(
                    icon: TEST_ICON,
                    text: TEST_TEXT,
                    onPressed: TestTools.dummyOnPressed
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(ElevatedButton);
            await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/DefaultColor_LightTheme.png'));
        }
    );

    testWidgets('MetaRaisedIconAndTextButton_Material_DefaultColor_DarkTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.dark;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TestTools.TEST_COLOR_PREVIOUSLY_NULL,
                child: const MetaRaisedIconAndTextButton(
                    icon: TEST_ICON,
                    text: TEST_TEXT,
                    onPressed: TestTools.dummyOnPressed
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(ElevatedButton);
            await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/DefaultColor_DarkTheme.png'));
        }
    );

    testWidgets('MetaRaisedIconAndTextButton_Material_LightColor_LightTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.light;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TEST_COLOR_LIGHT,
                child: const MetaRaisedIconAndTextButton(
                    icon: TEST_ICON,
                    text: TEST_TEXT,
                    onPressed: TestTools.dummyOnPressed
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(ElevatedButton);
            await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/LightColor_LightTheme.png'));
        }
    );

    testWidgets('MetaRaisedIconAndTextButton_Material_LightColor_DarkTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.dark;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TEST_COLOR_LIGHT,
                child: const MetaRaisedIconAndTextButton(
                    icon: TEST_ICON,
                    text: TEST_TEXT,
                    onPressed: TestTools.dummyOnPressed
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(ElevatedButton);
            await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/LightColor_DarkTheme.png'));
        }
    );

    testWidgets('MetaRaisedIconAndTextButton_Material_DarkColor_LightTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.light;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TEST_COLOR_DARK,
                child: const MetaRaisedIconAndTextButton(
                    icon: TEST_ICON,
                    text: TEST_TEXT,
                    onPressed: TestTools.dummyOnPressed
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(ElevatedButton);
            await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/DarkColor_LightTheme.png'));
        }
    );

    testWidgets('MetaRaisedIconAndTextButton_Material_DarkColor_DarkTheme', (WidgetTester tester)
        async
        {
            Meta.forceDesign = MetaDesign.Material;
            Meta.brightness = Brightness.dark;

            final Widget testWidget = TestTools.createMetaApp(
                primaryColor: TEST_COLOR_DARK,
                child: const MetaRaisedIconAndTextButton(
                    icon: TEST_ICON,
                    text: TEST_TEXT,
                    onPressed: TestTools.dummyOnPressed
                )
            );

            await tester.pumpWidget(testWidget);

            final Finder finder = find.byType(ElevatedButton);
            await expectLater(finder, matchesGoldenFile('golden/MetaRaisedIconAndTextButton/Material/DarkColor_DarkTheme.png'));
        }
    );
}
