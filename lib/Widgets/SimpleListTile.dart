

import 'package:flutter/material.dart';

class SimpleListTile extends StatelessWidget
{
    final Widget? title;
    final Widget? subtitle;
    final Widget? trailing;

    SimpleListTile({
        this.title,
        this.subtitle,
        this.trailing
    });

    @override
    Widget build(BuildContext context)
    {
        List<Widget?> rowChildren = [];
        List<Widget?> columnChildren = [];

        if (title != null)
            columnChildren.add(title);

        if (subtitle != null)
            columnChildren.add(subtitle);

        if (columnChildren.length == 0)
            rowChildren.add(Expanded(child: Container()));
        else
            rowChildren.add(Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: columnChildren as List<Widget>)));

        if (trailing != null)
            rowChildren.add(trailing);

        if (columnChildren.length == 0)
            return Container();

        return Row(children: rowChildren as List<Widget>);
    }
}
