import 'package:eggnstone_flutter_meta/src/MetaThemeData.dart';
import 'package:flutter/material.dart';

class TestTools
{
    static const Color TEST_COLOR = Colors.pink;
    static const Color TEST_COLOR_PREVIOUSLY_NULL = Colors.brown;

    static Widget createMetaApp({
        required Color primaryColor,
        required Widget child
    })
    // MetaApp has been deleted because it was hardcoded to MaterialApp.
    =>  Builder(
        builder: (BuildContext context)
        => MaterialApp(
            // MetaScaffold has been deleted because it was hardcoded to Scaffold.
            home: Scaffold(
                body: child
            ),
            theme: MetaThemeData.createMaterialThemeWithBrightness(
                brightness: Brightness.light,
                color: primaryColor,
                context: context 
            )
        )
    );

    static void dummyOnPressed()
    {
    }

    static void dummyOnChangedBool(_)
    {
    }
}
