import 'dart:io';

import 'package:flutter/services.dart';

import 'MetaDesign.dart';

class Meta
{
    static MetaDesign forceDesign;
    static Brightness brightness;

    static bool get isDesignCupertino
    => Platform.isIOS || forceDesign == MetaDesign.Cupertino;

    static bool get isDesignMaterial
    => !Platform.isIOS || forceDesign == MetaDesign.Material;
}
