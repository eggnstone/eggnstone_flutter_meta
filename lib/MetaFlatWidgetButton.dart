
// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaFlatWidgetButton extends StatelessWidget
{
    final Widget? child;

    //final Color color;
    final VoidCallback? onPressed;

    //final Color textColor;

    const MetaFlatWidgetButton({
        this.child,
        //this.color,
        this.onPressed,
        //this.textColor,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
            return CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                minSize: 1,
                child: child!,
                //color: color,
                onPressed: onPressed,
                //textColor: textColor
            );

        return TextButton(
            child: child!,
            //color: color,
            onPressed: onPressed,
            //textColor: textColor
        );
    }
}
