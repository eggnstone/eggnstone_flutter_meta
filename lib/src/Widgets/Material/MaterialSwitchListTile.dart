// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/material.dart';

import '../SimpleListTile.dart';

class MaterialSwitchListTile extends StatelessWidget
{
    final Widget? title;
    final Widget? subtitle;
    final bool? value;
    final ValueChanged<bool>? onChanged;
    final Color? activeColor;

    const MaterialSwitchListTile({
        this.title,
        this.subtitle,
        this.value,
        this.activeColor,
        this.onChanged,
        super.key
    });

    @override
    Widget build(BuildContext context)
    => SimpleListTile(
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
