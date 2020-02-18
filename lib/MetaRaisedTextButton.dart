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
            Color actualContentColor = textColor == null ? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black) : textColor;
            TextStyle actualTextStyle = actualContentColor == null ? null : theme.textTheme.textStyle.copyWith(color: actualContentColor);

            return CupertinoButton(
                child: Text(text, style: actualTextStyle),
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
            child: Text(text.toUpperCase()),
            color: actualColor,
            onPressed: onPressed,
            textColor: actualContentColor,
        );
    }
}
