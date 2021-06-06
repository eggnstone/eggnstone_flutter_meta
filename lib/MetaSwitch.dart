import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaSwitch extends StatelessWidget
{
    final bool value;
    final ValueChanged<bool> onChanged;

    const MetaSwitch({
        Key? key,
        required this.value,
        required this.onChanged
    })
        : assert(value != null),
            super(key: key);

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            CupertinoThemeData cupertinoTheme = CupertinoTheme.of(context);

            // Unfortunately there is currently no way to detect if the primaryColor was null when creating the theme,
            // therefore the Cupertino-green default color will always be overridden.
            // TODO: find a solution

            return CupertinoSwitch(
                activeColor: cupertinoTheme.primaryColor,
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
