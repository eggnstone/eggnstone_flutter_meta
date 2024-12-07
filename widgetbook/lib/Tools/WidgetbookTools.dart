import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookTools
{
    static void dummyOnPressed()
    {
    }

    static void dummyOnChangedBool(_)
    {
    }

    static Color? getRedColors(BuildContext context)
    {
        final bool useSpecificColor = context.knobs.boolean(label: 'color=red');
        final bool useSpecificColorLight = context.knobs.boolean(label: 'color=red.shade100');
        return useSpecificColor ? useSpecificColorLight ? Colors.red.shade100 : Colors.red : null;
    }

    static Color? getGreenTextColor(BuildContext context)
    => context.knobs.boolean(label: 'textColor=green') ? Colors.green : null;
}
