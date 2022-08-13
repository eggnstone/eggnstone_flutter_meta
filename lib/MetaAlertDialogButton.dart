
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';
import 'MetaStringTools.dart';

class MetaAlertDialogButton extends StatelessWidget
{
    final String? text;
    final bool isDestructiveAction;
    final VoidCallback? onPressed;

    MetaAlertDialogButton({
        this.text,
        this.isDestructiveAction = false,
        this.onPressed
    })
    {
        assert(text != null);
        assert(onPressed != null);
    }

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
            return CupertinoDialogAction(child: Text(text!), isDestructiveAction: isDestructiveAction, onPressed: onPressed);

        return FlatButton(onPressed: onPressed, child: Text(MetaStringTools.toUpperCase(text)!));
    }
}
