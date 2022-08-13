/*

import 'package:flutter/material.dart';


import 'Meta.dart';

class MetaCheckbox extends StatelessWidget
{
    final bool value;
    final ValueChanged<bool> onChanged;

    const MetaCheckbox({Key key, this.value, this.onChanged}) : super(key: key);

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
                child: Checkbox(
                    activeColor: activeColor,
                    value: value,
                    onChanged: onChanged,
                ),
            );
        }

        return Checkbox(
            value: value,
            onChanged: onChanged,
        );
    }
}
*/
