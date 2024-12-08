// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';
import 'Tools/MetaStringTools.dart';

class MetaAlertDialogButton extends StatelessWidget
{
    final bool isDestructiveAction;
    final String text;
    final VoidCallback? onPressed;

    const MetaAlertDialogButton({
        required this.text,
        this.onPressed,
        this.isDestructiveAction = false,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            final DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
            final Color textColor = onPressed == null
                ? CupertinoColors.inactiveGray
                : isDestructiveAction
                    ? CupertinoColors.destructiveRed
                    : CupertinoColors.activeBlue;

            return CupertinoDialogAction(
                child: Text(text),
                textStyle: defaultTextStyle.style.copyWith(color: textColor),
                isDestructiveAction: isDestructiveAction,
                onPressed: onPressed
            );
        }

        return TextButton(onPressed: onPressed, child: Text(MetaStringTools.toUpperCase(text)));
    }
}
