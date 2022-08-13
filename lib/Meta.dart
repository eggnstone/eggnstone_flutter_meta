import 'dart:io';

import 'package:flutter/material.dart';


import 'MetaDesign.dart';

class Meta
{
    static MetaDesign? forceDesign;
    static Brightness? brightness;

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
