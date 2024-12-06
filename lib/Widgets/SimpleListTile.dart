

import 'package:flutter/material.dart';

class SimpleListTile extends StatelessWidget
{
    final Widget? title;
    final Widget? subtitle;
    final Widget? trailing;

    const SimpleListTile({
        this.title,
        this.subtitle,
        this.trailing,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        final List<Widget?> rowChildren = <Widget?>[];
        final List<Widget?> columnChildren = <Widget?>[];

        if (title != null)
            columnChildren.add(title);

        if (subtitle != null)
            columnChildren.add(subtitle);

        if (columnChildren.isEmpty)
            rowChildren.add(Expanded(child: Container()));
        else
            rowChildren.add(Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: columnChildren as List<Widget>)));

        if (trailing != null)
            rowChildren.add(trailing);

        if (columnChildren.isEmpty)
            return Container();

        return Row(children: rowChildren as List<Widget>);
    }
}
