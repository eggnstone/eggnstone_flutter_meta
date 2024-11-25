
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';
import 'MetaStringTools.dart';

class MetaFlatTextButton extends StatelessWidget
{
    final VoidCallback? onPressed;
    final String? text;
    final Color? textColor;

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
                child: Text(text!, style: TextStyle(color: textColor)),
                onPressed: onPressed,
            );

        return TextButton(
            child: Text(MetaStringTools.toUpperCase(text)!, style: TextStyle(color: textColor)),
            //TODO migrate: textColor: textColor,
            onPressed: onPressed,
        );
    }
}
