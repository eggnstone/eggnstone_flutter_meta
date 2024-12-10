// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Meta.dart';
import 'MetaDesign.dart';
import 'MetaStatelessWidget.dart';

/// Padding around the content.
///
/// If there is no content, no padding will be provided. Otherwise, padding of
/// 20 pixels is provided above the content to separate the content from the
/// title, and padding of 24 pixels is provided on the left, right, and bottom
/// to separate the content from the other edges of the dialog.
class MetaAlertDialog extends MetaStatelessWidget
{
    final List<Widget> actions;
    final Widget? content;
    final EdgeInsetsGeometry? overrideMaterialDefaultContentPadding;
    final EdgeInsetsGeometry? overrideMaterialDefaultTitlePadding;
    final Widget? title;

    const MetaAlertDialog({
        required this.actions,
        this.content,
        this.overrideMaterialDefaultContentPadding,
        this.overrideMaterialDefaultTitlePadding,
        this.title,
        super.design,
        super.key
    }) : assert(title != null || content != null, 'Either title or content must be provided');

    @override
    Widget build(BuildContext context)
    {
        final Widget? actualTitle = title;
        //actualTitle = actualTitle == null ? null : BorderedContainer(child: actualTitle);
        //actualTitle = actualTitle == null ? null : Container(child: actualTitle, foregroundDecoration: BoxDecoration(color: Color.fromARGB(50, 255, 0, 0)));

        final Widget? actualContent = content;
        //actualContent = actualContent == null ? null : BorderedContainer(child: actualContent);
        //actualContent = actualContent == null ? null : Container(child: actualContent, foregroundDecoration: BoxDecoration(color: Color.fromARGB(50, 255, 0, 0)));

        // TODO: make wide for iOS!
        //if (Meta.isDesignCupertino)
        if (design == MetaDesign.Cupertino || (Meta.isDesignCupertino && design == null))
            return CupertinoAlertDialog(
                title: actualTitle,
                // has no titlePadding
                content: actualContent,
                // has no contentPadding
                actions: actions
            );

        // contentPadding must not be null hence putting in the default here
        final EdgeInsetsGeometry actualMaterialContentPadding = overrideMaterialDefaultContentPadding == null ? const EdgeInsets.fromLTRB(24, 20, 24, 24) : overrideMaterialDefaultContentPadding!;

        return AlertDialog(
            title: actualTitle,
            titlePadding: overrideMaterialDefaultTitlePadding,
            content: actualContent,
            contentPadding: actualMaterialContentPadding,
            actions: actions
        );
    }
}
