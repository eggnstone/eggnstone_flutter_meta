// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';

import 'Meta.dart';
import 'MetaDesign.dart';
import 'MetaStatelessWidget.dart';
import 'Widgets/Cupertino/CupertinoSwitchListTile.dart';
import 'Widgets/Material/MaterialSwitchListTile.dart';

class MetaSwitchListTile extends MetaStatelessWidget
{
    final ValueChanged<bool>? onChanged;
    final Widget? subtitle;
    final Widget? title;
    final bool value;

    const MetaSwitchListTile({
        required this.value,
        this.subtitle,
        this.title,
        this.onChanged,
        //super.brightness,
        super.design,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (design == MetaDesign.Cupertino || (Meta.isDesignCupertino && design == null))
        {
            //final Color activeColor = CupertinoTheme.of(context).primaryColor;
            return CupertinoSwitchListTile(
                //activeColor: activeColor,
                subtitle: subtitle,
                title: title,
                value: value,
                onChanged: onChanged
            );
        }

        return MaterialSwitchListTile(
            //activeColor: activeColor,
            subtitle: subtitle, 
            title: title, 
            value: value,
            onChanged: onChanged 
        );
    }
}
