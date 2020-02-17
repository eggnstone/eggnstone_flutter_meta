import 'package:eggnstone_flutter_meta/Meta.dart';
import 'package:eggnstone_flutter_meta/MetaDesign.dart';
import 'package:eggnstone_flutter_meta/MetaSwitch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main()
{
    //final TestWidgetsFlutterBinding _binding = TestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('MetaSwitch + MetaDesign.Cupertino -> CupertinoSwitch', (WidgetTester tester)
    async
    {
        Meta.forceDesign = MetaDesign.Cupertino;
        var widgetKey = GlobalKey();
        Widget widget = MetaSwitch(
            key: widgetKey,
            value: false,
            onChanged: (_)
            {}
        );

        await tester.pumpWidget(widget);

        expect(find.byType(CupertinoSwitch), findsOneWidget);
    });

    testWidgets('Container', (WidgetTester tester)
    async
    {
        var widgetKey = GlobalKey();
        Widget widget = Container(key: widgetKey);

        await tester.pumpWidget(widget);

        expect(find.byType(Container), findsOneWidget);
    });
}
