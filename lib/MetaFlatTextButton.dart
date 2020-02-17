import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaFlatTextButton extends StatelessWidget
{
    final VoidCallback onPressed;
    final String text;
    final Color textColor;

    MetaFlatTextButton({
        this.text,
        this.onPressed,
        this.textColor
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
            return CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                minSize: 1.0,
                child: Text(text, style: TextStyle(color: textColor)),
                onPressed: onPressed,
            );

        return FlatButton(
            child: Text(text.toUpperCase(), style: TextStyle(color: textColor)),
            textColor: textColor,
            onPressed: onPressed,
        );
    }
}
