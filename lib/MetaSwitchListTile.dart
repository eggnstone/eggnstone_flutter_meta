
// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';

import 'src/Meta.dart';
import 'src/Widgets/Cupertino/CupertinoSwitchListTile.dart';
import 'src/Widgets/Material/MaterialSwitchListTile.dart';

class MetaSwitchListTile extends StatelessWidget
{
    final ValueChanged<bool>? onChanged;
    final Widget? subtitle;
    final Widget? title;
    final bool? value;

    const MetaSwitchListTile({
        this.onChanged,
        this.subtitle,
        this.title,
        this.value,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            final Color activeColor = CupertinoTheme
                .of(context)
                .primaryColor;

            return CupertinoSwitchListTile(activeColor: activeColor,
                onChanged: onChanged,
                subtitle: subtitle,
                title: title,
                value: value
            );
        }

        return MaterialSwitchListTile(onChanged: onChanged, subtitle: subtitle, title: title, value: value);
    }
}
