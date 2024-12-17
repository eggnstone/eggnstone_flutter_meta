// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaRaisedWidgetButton extends StatelessWidget
{
    final Widget? child;
    // Disabled for now: final Color? color;
    // Disabled for now: final Color? textColor;
    final VoidCallback? onPressed;

    const MetaRaisedWidgetButton({
        this.child,
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
            // Disabled for now: final CupertinoThemeData theme = CupertinoTheme.of(context);
            // Disabled for now: final Color? actualColor = color ?? (theme.brightness == Brightness.dark ? theme.primaryColor : Colors.grey[300]);

            return CupertinoButton.filled(
                child: child!,
                // Disabled for now: color: actualColor,
                minSize: 1,
                onPressed: onPressed,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
            );
        }

        // Disabled for now: final ThemeData materialTheme = Theme.of(context);
        // Disabled for now: final Color? actualColor = color ?? materialTheme.buttonColor;
        // Disabled for now: final Color? actualContentColor = textColor ?? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black);

        return ElevatedButton(
            child: child,
            // Disabled for now: color: actualColor,
            onPressed: onPressed
            // Disabled for now: textColor: actualContentColor
        );
    }
}
