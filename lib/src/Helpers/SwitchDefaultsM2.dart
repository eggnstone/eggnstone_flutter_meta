// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/material.dart';

class SwitchDefaultsM2 extends SwitchThemeData
{
    final Color color;
    final bool isDark;

    const SwitchDefaultsM2(this.color, {required this.isDark});

    static SwitchDefaultsM2? create(BuildContext? context, Color? color)
    {
        if (color == null)
            return null;

        final bool isDark = context != null && Theme.of(context).brightness == Brightness.dark;
        return SwitchDefaultsM2(color, isDark: isDark);
    }

    @override
    WidgetStateProperty<Color> get thumbColor
    => WidgetStateProperty.resolveWith((Set<WidgetState> states)
        {
            if (states.contains(WidgetState.disabled))
                return  isDark ? Colors.grey.shade800 : Colors.grey.shade400;

            if (states.contains(WidgetState.selected))
                return color;

            return isDark ? Colors.grey.shade400 : Colors.grey.shade50;
        }
    );

    @override
    WidgetStateProperty<Color> get trackColor
    {
        const Color black32 = Color(0x52000000); // Black with 32% opacity
        return WidgetStateProperty.resolveWith((Set<WidgetState> states)
            {
                if (states.contains(WidgetState.disabled))
                    return isDark ? Colors.white10 : Colors.black12;

                if (states.contains(WidgetState.selected))
                    return color.withAlpha(0x80);

                return isDark ? Colors.white30 : black32;
            }
        );
    }
}
