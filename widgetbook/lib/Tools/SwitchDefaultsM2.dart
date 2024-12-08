// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/material.dart';

class SwitchDefaultsM2 extends SwitchThemeData
{
    final BuildContext context;
    final Brightness? brightness;
    final Color color;

    const SwitchDefaultsM2(this.context, this.brightness, this.color);

    @override
    WidgetStateProperty<Color> get thumbColor
    => WidgetStateProperty.resolveWith((Set<WidgetState> states)
        {
            final Brightness finalBrightness = brightness ?? Theme.of(context).brightness;

            final bool isDark = finalBrightness == Brightness.dark;

            if (states.contains(WidgetState.disabled))
                return isDark ? Colors.grey.shade800 : Colors.grey.shade400;

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
                final bool isDark = brightness == Brightness.dark;

                if (states.contains(WidgetState.disabled))
                    return isDark ? Colors.white10 : Colors.black12;

                if (states.contains(WidgetState.selected))
                    return color.withAlpha(0x80);

                return isDark ? Colors.white30 : black32;
            }
        );
    }
}
