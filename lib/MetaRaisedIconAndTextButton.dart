import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaRaisedIconAndTextButton extends StatelessWidget
{
    final Icon icon;
    final String text;
    final String textUpperCase;
    final Color color;
    final VoidCallback onPressed;
    final Color textColor;

    MetaRaisedIconAndTextButton({
        this.icon,
        this.text,
        this.textUpperCase,
        this.color,
        this.onPressed,
        this.textColor
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
            return CupertinoButton.filled(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                minSize: 1.0,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        icon,
                        SizedBox(width: 16),
                        Text(text),
                    ]
                ),
                //color: color,
                onPressed: onPressed,
                //textColor: textColor
            );

        return RaisedButton(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    icon,
                    SizedBox(width: 16),
                    Text(textUpperCase)
                ]
            ),
            color: color,
            onPressed: onPressed,
            textColor: textColor
        );
    }
}
