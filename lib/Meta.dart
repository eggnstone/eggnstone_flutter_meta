import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'MetaDesign.dart';

class Meta
{
    static MetaDesign forceDesign;
    static Brightness brightness;

    static bool get isDesignCupertino
    => Platform.isIOS || forceDesign == MetaDesign.Cupertino;

    static bool get isDesignMaterial
    => !Platform.isIOS || forceDesign == MetaDesign.Material;

    static bool isDark(BuildContext context)
    {
        if (brightness == Brightness.light)
            return false;

        if (brightness == Brightness.dark)
            return true;

        if (context == null)
        {
            print('################################################################################');
            print('# Meta.isDark: called with null context!');
            print('################################################################################');
            return false;
        }

        try
        {
            Brightness platformBrightness = MediaQuery
                .of(context)
                .platformBrightness;

            return platformBrightness == Brightness.dark;
        }
        catch (exception)
        {
            print('################################################################################');
            print('# Meta.isDark: $exception');
            print('################################################################################');
            return false;
        }
    }
}
