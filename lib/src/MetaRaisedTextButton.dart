
// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';
import 'MetaStringTools.dart';

class MetaRaisedTextButton extends StatelessWidget
{
    final String text;
    final Color? color;
    final Color? textColor;
    final VoidCallback? onPressed;

    const MetaRaisedTextButton({
        required this.text,
        this.color,
        this.textColor,
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
            //final Color actualContentColor = textColor; // TODO: fix or not? ?? (actualColor!.computeLuminance() < 0.5 ? Colors.white : Colors.black);
            final Color? actualContentColor = textColor; // TODO: fix or not? ?? (actualColor!.computeLuminance() < 0.5 ? Colors.white : Colors.black);
            final TextStyle actualTextStyle = theme.textTheme.textStyle.copyWith(color: actualContentColor);

            return CupertinoButton(
                child: Text(text, style: actualTextStyle),
                color: actualColor,
                minSize: 1,
                onPressed: onPressed,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
            );
        }

        // TODO: fix or not? final ThemeData materialTheme = Theme.of(context);
        // TODO: fix or not? final Color? actualColor = color ?? materialTheme.buttonColor;
        //final Color actualContentColor = textColor; // TODO: fix or not? ?? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black);
        // TODO: fix or not? final Color? actualContentColor = textColor; // TODO: fix or not? ?? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black);

        /*final ThemeData theme = Theme.of(context);
        final TextStyle actualTextStyle = theme.textTheme.textStyle.copyWith(color: actualContentColor);*/

        return ElevatedButton(
            child: Text(MetaStringTools.toUpperCase(text)),
            // TODO: fix or not? color: actualColor,
            onPressed: onPressed
            // TODO: FIX !!!!!!!!!! textColor: actualContentColor
        );
    }
}
