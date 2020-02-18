import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaRaisedWidgetButton extends StatelessWidget
{
    final Widget child;
    final Color color;
    final VoidCallback onPressed;
    final Color textColor;

    MetaRaisedWidgetButton({
        this.child,
        this.color,
        this.onPressed,
        this.textColor
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            CupertinoThemeData theme = CupertinoTheme.of(context);
            Color actualColor = color == null ? theme.brightness == Brightness.dark ? theme.primaryColor : Colors.grey[300] : color;

            return CupertinoButton(
                child: child,
                color: actualColor,
                minSize: 1.0,
                onPressed: onPressed,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            );
        }

        ThemeData materialTheme = Theme.of(context);
        Color actualColor = color == null ? materialTheme.buttonColor : color;
        Color actualContentColor = textColor == null ? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black) : textColor;

        return RaisedButton(
            child: child,
            color: actualColor,
            onPressed: onPressed,
            textColor: actualContentColor
        );
    }
}
