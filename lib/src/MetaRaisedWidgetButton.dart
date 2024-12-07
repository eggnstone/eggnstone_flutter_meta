// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ColorConstants.dart';
import 'Meta.dart';

class MetaRaisedWidgetButton extends StatelessWidget
{
    final Widget? child;
    final Color? color;
    // TODO: fix or not? final Color? textColor;
    final VoidCallback? onPressed;

    const MetaRaisedWidgetButton({
        this.child,
        this.color,
        // TODO: fix or not? this.textColor,
        this.onPressed,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            final CupertinoThemeData theme = CupertinoTheme.of(context);
            final Color? actualColor = color ?? (theme.brightness == Brightness.dark ? theme.primaryColor : Colors.grey[300]);

            return CupertinoButton(
                child: child!,
                color: actualColor,
                minSize: 1,
                onPressed: onPressed,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
            );
        }

        // TODO: fix or not? final ThemeData materialTheme = Theme.of(context);
        // TODO: fix or not? final Color? actualColor = color ?? materialTheme.buttonColor;
        // TODO: fix or not? final Color? actualContentColor = textColor ?? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black);

        return ElevatedButton(
            child: child,
            // TODO: fix or not? color: actualColor,
            onPressed: onPressed,
            // TODO: fix or not? textColor: actualContentColor
        );
    }
}
