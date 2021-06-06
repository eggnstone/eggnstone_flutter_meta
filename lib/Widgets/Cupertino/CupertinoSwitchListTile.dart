import 'package:flutter/cupertino.dart';

import '../SimpleListTile.dart';

class CupertinoSwitchListTile extends StatelessWidget
{
    final Widget? title;
    final Widget? subtitle;
    final bool? value;
    final ValueChanged<bool>? onChanged;
    final Color? activeColor;

    CupertinoSwitchListTile({
        this.title,
        this.subtitle,
        this.value,
        this.activeColor,
        this.onChanged
    });

    @override
    Widget build(BuildContext context)
    {
        return SimpleListTile(
            title: title,
            subtitle: subtitle,
            trailing: CupertinoSwitch(
                value: value!,
                onChanged: onChanged,
                activeColor: activeColor
            )
        );
    }
}
