// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';

import '../SimpleListTile.dart';

class CupertinoSwitchListTile extends StatelessWidget
{
    final Widget? title;
    final Widget? subtitle;
    final bool value;
    final ValueChanged<bool>? onChanged;
    final Color? activeColor;

    const CupertinoSwitchListTile({
        required this.value,
        this.title,
        this.subtitle,
        this.activeColor,
        this.onChanged,
        super.key
    });

    @override
    Widget build(BuildContext context)
    => SimpleListTile(
        title: title,
        subtitle: subtitle,
        trailing: CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: activeColor
        )
    );
}
