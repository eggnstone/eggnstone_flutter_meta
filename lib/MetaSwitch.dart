import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaSwitch extends StatelessWidget
{
    final bool value;
    final ValueChanged<bool> onChanged;

    const MetaSwitch({
        Key key,
        @required this.value,
        @required this.onChanged
    })
        : assert(value != null),
            super(key: key);

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            Color activeColor = CupertinoTheme
                .of(context)
                .primaryColor;

            return CupertinoSwitch(
                activeColor: activeColor,
                value: value,
                onChanged: onChanged,
            );
        }

        return Switch(
            value: value,
            onChanged: onChanged,
        );
    }
}
