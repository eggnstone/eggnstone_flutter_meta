import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';

/// Padding around the content.
///
/// If there is no content, no padding will be provided. Otherwise, padding of
/// 20 pixels is provided above the content to separate the content from the
/// title, and padding of 24 pixels is provided on the left, right, and bottom
/// to separate the content from the other edges of the dialog.
class MetaAlertDialog extends StatelessWidget
{
    final Widget? title;
    final EdgeInsetsGeometry? overrideMaterialDefaultTitlePadding;
    final Widget? content;
    final EdgeInsetsGeometry? overrideMaterialDefaultContentPadding;
    final List<Widget>? actions;

    MetaAlertDialog({
        this.title,
        this.overrideMaterialDefaultTitlePadding,
        this.content,
        this.overrideMaterialDefaultContentPadding,
        this.actions
    })
    {
        assert(title != null || content != null);
    }

    @override
    Widget build(BuildContext context)
    {
        Widget? actualTitle = title;
        //actualTitle = actualTitle == null ? null : BorderedContainer(child: actualTitle);
        //actualTitle = actualTitle == null ? null : Container(child: actualTitle, foregroundDecoration: BoxDecoration(color: Color.fromARGB(50, 255, 0, 0)));

        Widget? actualContent = content;
        //actualContent = actualContent == null ? null : BorderedContainer(child: actualContent);
        //actualContent = actualContent == null ? null : Container(child: actualContent, foregroundDecoration: BoxDecoration(color: Color.fromARGB(50, 255, 0, 0)));

        // TODO: make wide for iOS!
        if (Meta.isDesignCupertino)
            return CupertinoAlertDialog(
                title: actualTitle,
                // has no titlePadding
                content: actualContent,
                // has no contentPadding
                actions: actions!
            );

        // contentPadding must not be null hence putting in the default here
        EdgeInsetsGeometry actualMaterialContentPadding = overrideMaterialDefaultContentPadding == null ? const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0) : overrideMaterialDefaultContentPadding!;

        return AlertDialog(
            title: actualTitle,
            titlePadding: overrideMaterialDefaultTitlePadding,
            content: actualContent,
            contentPadding: actualMaterialContentPadding,
            actions: actions
        );
    }
}
