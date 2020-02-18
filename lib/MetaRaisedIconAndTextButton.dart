import 'package:eggnstone_flutter_meta/MetaRaisedWidgetButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaRaisedIconAndTextButton extends StatelessWidget
{
    final Color color;
    final Icon icon;
    final String text;
    final Color textColor;
    final VoidCallback onPressed;

    MetaRaisedIconAndTextButton({
        this.color,
        this.icon,
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
            Color actualTextColor = textColor == null ? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black) : textColor;
            TextStyle actualTextStyle = actualTextColor == null ? null : theme.textTheme.textStyle.copyWith(color: actualTextColor);

            return CupertinoButton(
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        icon,
                        SizedBox(width: 16),
                        Text(text, style: actualTextStyle),
                    ]
                ),
                color: actualColor,
                minSize: 1.0,
                onPressed: onPressed,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            );
        }

        ThemeData materialTheme = Theme.of(context);
        Color actualColor = color == null ? materialTheme.buttonColor : color;
        Color actualTextColor = textColor == null ? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black) : textColor;

        return RaisedButton(

            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    icon,
                    SizedBox(width: 16),
                    Text(text.toUpperCase()),
                ]
            ),
            color: actualColor,
            onPressed: onPressed,
            textColor: actualTextColor,
        );
    }
}
