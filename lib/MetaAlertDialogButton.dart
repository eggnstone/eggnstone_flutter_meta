import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaAlertDialogButton extends StatelessWidget
{
    final String text;
    final String textUpperCase;
    final bool isDestructiveAction;
    final VoidCallback onPressed;

    MetaAlertDialogButton({
        this.text,
        this.textUpperCase,
        this.isDestructiveAction = false,
        this.onPressed
    })
    {
        assert(text != null);
        assert(textUpperCase != null);
        assert(isDestructiveAction != null);
        assert(onPressed != null);
    }

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
            return CupertinoDialogAction(child: Text(text), isDestructiveAction: isDestructiveAction, onPressed: onPressed);

        String actualText = (textUpperCase == null) ? text.toUpperCase() : textUpperCase;

        return FlatButton(onPressed: onPressed, child: Text(actualText));
    }
}
