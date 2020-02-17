import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaRaisedTextButton extends StatelessWidget
{
    final Color color;
    final String text;
    final Color textColor;
    final VoidCallback onPressed;

    MetaRaisedTextButton({
        this.color,
        this.text,
        this.textColor,
        this.onPressed,
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            CupertinoThemeData theme = CupertinoTheme.of(context);
            Color actualColor = color == null ? theme.brightness == Brightness.dark ? theme.primaryColor : Colors.grey[300] : color;
            Color textColor = actualColor == null ? null : actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black;

            return CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                minSize: 1.0,
                child: Text(text, style: TextStyle(color: textColor)),
                color: actualColor,
                onPressed: onPressed
            );
        }

        return RaisedButton(child: Text(text.toUpperCase()), color: color, onPressed: onPressed, textColor: textColor);
    }
}
