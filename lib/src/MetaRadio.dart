/*

import 'package:flutter/material.dart';


import 'src/Meta.dart';

class MetaRadio<T> extends StatelessWidget
{
    final T value;
    final T groupValue;
    final ValueChanged<T> onChanged;

    const MetaRadio({Key key, this.value, this.groupValue, this.onChanged}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            Color activeColor = CupertinoTheme
                .of(context)
                .primaryColor;

            return Material(
                color: Colors.transparent,
                child: Radio(
                    activeColor: activeColor,
                    groupValue: groupValue,
                    value: value,
                    onChanged: onChanged,
                ),
            );
        }

        return Radio(
            groupValue: groupValue,
            value: value,
            onChanged: onChanged,
        );
    }
}
*/
