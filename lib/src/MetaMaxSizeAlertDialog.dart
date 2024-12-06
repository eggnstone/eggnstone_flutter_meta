import 'package:flutter/material.dart';

import 'Meta.dart';
import 'Widgets/Cupertino/CupertinoMaxSizeAlertDialog.dart';

class MetaMaxSizeAlertDialog extends StatelessWidget
{
    final Widget? title;
    final Widget? content;
    final List<Widget>? actions;

    const MetaMaxSizeAlertDialog({
        this.title,
        /*this.minTitlePadding,*/
        this.content,
        /*this.minContentPadding,*/
        this.actions,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        final Widget? actualTitle = title;
        //actualTitle = actualTitle == null ? null : BorderedContainer(child: actualTitle);
        //actualTitle = actualTitle == null ? null : Container(child: actualTitle, foregroundDecoration: BoxDecoration(color: Color.fromARGB(50, 255, 0, 0)));

        final Widget? actualContent = content;
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
            titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
            content: actualContent,
            // reduced padding for content
            contentPadding: const EdgeInsets.all(8),
            actions: actions
        );
    }
}
