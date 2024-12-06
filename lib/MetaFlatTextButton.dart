// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';
import 'MetaStringTools.dart';

class MetaFlatTextButton extends StatelessWidget
{
    final String? text;
    final Color? textColor;
    final VoidCallback? onPressed;

    const MetaFlatTextButton({
        this.text,
        this.textColor,
        this.onPressed,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
            return CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                minSize: 1,
                child: Text(text!, style: TextStyle(color: textColor)),
                onPressed: onPressed
            );

        return TextButton(
            child: Text(MetaStringTools.toUpperCase(text)!, style: TextStyle(color: textColor)),
            onPressed: onPressed
        );
    }
}
