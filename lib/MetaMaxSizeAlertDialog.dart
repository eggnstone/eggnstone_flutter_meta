import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';
import 'Widgets/Cupertino/CupertinoMaxSizeAlertDialog.dart';

class MetaMaxSizeAlertDialog extends StatelessWidget
{
    final Widget title;
    final Widget content;
    final List<Widget> actions;

    MetaMaxSizeAlertDialog({
        this.title,
        /*this.minTitlePadding,*/
        this.content,
        /*this.minContentPadding,*/
        this.actions
    });

    @override
    Widget build(BuildContext context)
    {
        Widget actualTitle = title;
        //actualTitle = actualTitle == null ? null : BorderedContainer(child: actualTitle);
        //actualTitle = actualTitle == null ? null : Container(child: actualTitle, foregroundDecoration: BoxDecoration(color: Color.fromARGB(50, 255, 0, 0)));

        Widget actualContent = content;
        //actualContent = actualContent == null ? null : BorderedContainer(child: actualContent);
        //actualContent = actualContent == null ? null : Container(child: actualContent, foregroundDecoration: BoxDecoration(color: Color.fromARGB(50, 255, 0, 0)));

        if (Meta.isDesignCupertino)
            return CupertinoMaxSizeAlertDialog(
                title: actualTitle,
                // has no titlePadding
                content: actualContent,
                // has no contentPadding
                actions: actions);

        return AlertDialog(
            title: actualTitle,
            // default padding for title
            titlePadding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 8.0),
            content: actualContent,
            // reduced padding for content
            contentPadding: const EdgeInsets.all(8.0),
            actions: actions
        );
    }
}
