// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';
import 'Tools/MetaStringTools.dart';

class MetaRaisedIconAndTextButton extends StatelessWidget
{
    // Disabled for now: final Color? color;
    final Icon icon;
    final String text;
    // Disabled for now: final Color? textColor;
    final VoidCallback? onPressed;

    const MetaRaisedIconAndTextButton({
        required this.icon,
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
            final CupertinoThemeData theme = CupertinoTheme.of(context);
            //final Color? actualColor = color ?? (theme.brightness == Brightness.dark ? theme.primaryColor : Colors.grey[300]);
            // TODO: fix or not? final Color actualContentColor = textColor ?? (actualColor!.computeLuminance() < 0.5 ? Colors.white : Colors.black);
            // TODO: fix or not? final TextStyle actualTextStyle = theme.textTheme.textStyle.copyWith(color: actualContentColor);
            final Icon actualIcon = icon.color == null ? Icon(icon.icon, size: icon.size
                // TODO: fix or not? color: actualContentColor
                ) : icon;

            return CupertinoButton(
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        actualIcon,
                        const SizedBox(width: 16),
                        Text(text)// TODO: fix or not? style: actualTextStyle)
                    ]
                ),
                //color: actualColor,
                minSize: 1,
                onPressed: onPressed,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
            );
        }

        // TODO: fix or not? final ThemeData materialTheme = Theme.of(context);
        // TODO: fix or not? final Color? actualColor = color ?? materialTheme.buttonColor;
        // TODO: fix or not? final Color actualContentColor = textColor ?? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black);
        final Icon actualIcon = icon.color == null ? Icon(icon.icon, size: icon.size
            // TODO: fix or not? color: actualContentColor
            ) : icon;

        return ElevatedButton(
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    actualIcon,
                    const SizedBox(width: 16),
                    Text(MetaStringTools.toUpperCase(text))
                ]
            ),
            // TODO: fix or not? color: actualColor,
            onPressed: onPressed
        // TODO: fix or not? textColor: actualContentColor
        );
    }
}
