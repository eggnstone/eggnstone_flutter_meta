// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/material.dart';

import '../SimpleListTile.dart';

class MaterialSwitchListTile extends StatelessWidget
{
    final Color? activeColor;
    final Widget? subtitle;
    final Widget? title;
    final bool value;
    final ValueChanged<bool>? onChanged;

    const MaterialSwitchListTile({
        required this.value,
        this.activeColor,
        this.subtitle,
        this.title,
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
            value: value,
            onChanged: onChanged,
            activeColor: activeColor
        )
    );
}
