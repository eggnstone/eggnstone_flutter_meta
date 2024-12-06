import 'package:eggnstone_flutter_meta/src/MetaThemeData.dart';
import 'package:flutter/material.dart';

class TestTools
{
    static Widget createMetaApp({required BuildContext? context, required Color? primaryColor, required Widget child})
    // MetaApp has been deleted because it was hardcoded to MaterialApp.
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
    );
}
