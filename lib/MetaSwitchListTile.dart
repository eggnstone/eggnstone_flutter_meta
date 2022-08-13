
import 'package:flutter/cupertino.dart';

import 'Meta.dart';
import 'Widgets/Cupertino/CupertinoSwitchListTile.dart';
import 'Widgets/Material/MaterialSwitchListTile.dart';

class MetaSwitchListTile extends StatelessWidget
{
    final ValueChanged<bool>? onChanged;
    final Widget? subtitle;
    final Widget? title;
    final bool? value;

    MetaSwitchListTile({
        this.onChanged,
        this.subtitle,
        this.title,
        this.value
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            Color activeColor = CupertinoTheme
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
