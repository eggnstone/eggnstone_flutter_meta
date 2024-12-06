
// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'src/Meta.dart';

class MetaSwitch extends StatelessWidget
{
    final bool value;
    final ValueChanged<bool> onChanged;

    const MetaSwitch({
        required this.value,
        required this.onChanged,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            final CupertinoThemeData cupertinoTheme = CupertinoTheme.of(context);

            // Unfortunately there is currently no way to detect if the primaryColor was null when creating the theme,
            // therefore the Cupertino-green default color will always be overridden.
            // TODO: find a solution

            return CupertinoSwitch(
                activeColor: cupertinoTheme.primaryColor,
                value: value,
                onChanged: onChanged
            );
        }

        return Switch(
            value: value,
            onChanged: onChanged
        );
    }
}
