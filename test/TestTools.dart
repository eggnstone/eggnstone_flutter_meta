import 'package:eggnstone_flutter_meta/MetaApp.dart';
import 'package:eggnstone_flutter_meta/MetaScaffold.dart';
import 'package:eggnstone_flutter_meta/MetaThemeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestTools
{
    static Widget createMetaApp({@required BuildContext context, @required Color primaryColor, @required Widget child})
    {
        assert(child != null);

        return MetaApp(
            home: MetaScaffold(
                body: child
            ),
            theme: MetaThemeData.createMaterialTheme(context: context, createDarkTheme: false, color: primaryColor),
        );
    }
}
