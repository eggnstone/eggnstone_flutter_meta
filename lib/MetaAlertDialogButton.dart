
// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MetaStringTools.dart';
import 'src/Meta.dart';

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
            return CupertinoDialogAction(child: Text(text), isDestructiveAction: isDestructiveAction, onPressed: onPressed);

        return TextButton(onPressed: onPressed, child: Text(MetaStringTools.toUpperCase(text)!));
    }
}
