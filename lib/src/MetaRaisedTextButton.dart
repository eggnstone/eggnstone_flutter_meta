// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';
import 'Tools/MetaStringTools.dart';

class MetaRaisedTextButton extends StatelessWidget
{
    final String text;
    // Disabled for now: final Color? color;
    // Disabled for now: final Color? textColor;
    final VoidCallback? onPressed;

    const MetaRaisedTextButton({
        required this.text,
        // Disabled for now: this.color,
        // Disabled for now: this.textColor,
        this.onPressed,
        super.key 
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            /* Disabled for now:
            final CupertinoThemeData cupertinoTheme = CupertinoTheme.of(context);
            // TODO: check grey[300]
            final Color? actualColor = color ?? (cupertinoTheme.brightness == Brightness.dark ? cupertinoTheme.primaryColor : Colors.grey[300]);

            Color? actualContentColor = textColor;
            if (actualContentColor == null && actualColor != null)
                actualContentColor = actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black;

            final TextStyle actualTextStyle = cupertinoTheme.textTheme.textStyle.copyWith(color: actualContentColor);
            */

            // TODO: is there a CupertinoButtonTheme?
            return CupertinoButton.filled(
                child: Text(text, /* Disabled for now:style: actualTextStyle*/),
                // Disabled for now: color: actualColor,
                minSize: 1,
                onPressed: onPressed,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
            );
        }

        /* Disabled for now:
        final ThemeData materialTheme = Theme.of(context);
        final ButtonStyle? elevatedButtonStyle = materialTheme.elevatedButtonTheme.style;

        final Color? actualColor = color ?? elevatedButtonStyle?.backgroundColor?.resolve(<WidgetState>{});

        Color? actualContentColor = textColor;
        if (actualContentColor == null && actualColor != null)
            actualContentColor = actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black;

        WidgetStateProperty<Color?>? newBackgroundColor;
        if (actualColor != null)
            newBackgroundColor = WidgetStateColor.resolveWith((Set<WidgetState> states)
                {
                    if (states.contains(WidgetState.disabled))
                        return elevatedButtonStyle?.backgroundColor?.resolve(<WidgetState>{}) ?? ColorConstants.ELEVATED_BUTTON__DISABLED_COLOR;

                    return actualColor;
                }
            ); 

        WidgetStateProperty<Color?>? newForegroundColor;
        if (actualContentColor != null)
            newForegroundColor = WidgetStateColor.resolveWith((Set<WidgetState> states)
                {
                    if (states.contains(WidgetState.disabled))
                        return Colors.grey;

                    return actualContentColor!;
                }
            );

        ButtonStyle? actualButtonStyle;
        if (actualColor != null || actualContentColor != null)
        {
            if (elevatedButtonStyle == null)
                actualButtonStyle = ButtonStyle(
                    backgroundColor: newBackgroundColor,
                    foregroundColor: newForegroundColor
                );
            else
                actualButtonStyle = elevatedButtonStyle.copyWith(
                    backgroundColor: newBackgroundColor,
                    foregroundColor: newForegroundColor
                );
        }
        */

        return ElevatedButton(
            child: Text(MetaStringTools.toUpperCase(text)),
            // Disabled for now: style: actualButtonStyle,
            onPressed: onPressed
        );
    }
}
