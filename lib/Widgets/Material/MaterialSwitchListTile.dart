import 'package:flutter/material.dart';

import '../SimpleListTile.dart';

class MaterialSwitchListTile extends StatelessWidget
{
    final Widget? title;
    final Widget? subtitle;
    final bool? value;
    final ValueChanged<bool>? onChanged;
    final Color? activeColor;

    MaterialSwitchListTile({
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
            trailing: Switch(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: value!,
                onChanged: onChanged,
                activeColor: activeColor
            )
        );
    }
}
