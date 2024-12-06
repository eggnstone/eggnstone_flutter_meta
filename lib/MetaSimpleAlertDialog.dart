import 'dart:async';

import 'package:flutter/material.dart';

import 'MetaAlertDialog.dart';
import 'MetaAlertDialogButton.dart';

class MetaSimpleAlertDialog
{
    static Future<T?> show<T>({
        required BuildContext context,
        String? title,
        String? content,
        String? dismissText,
        String? confirmText,
        Function? dismissAction,
        Function? confirmAction,
        bool isDestructiveAction = false
    })
    {
        final List<Widget> actions = <Widget>[];

        // TODO: upper case?

        if (dismissText != null)
            actions.add(MetaAlertDialogButton(text: dismissText, onPressed: dismissAction as void Function()?));

        if (confirmText != null)
            actions.add(MetaAlertDialogButton(text: confirmText, isDestructiveAction: isDestructiveAction, onPressed: confirmAction as void Function()?));

        return showDialog(
            context: context,
            builder: (BuildContext context)
            =>
            MetaAlertDialog(
                title: title == null ? null : Text(title),
                content: content == null ? null : Text(content), actions: actions
            )
        );
    }

    static Future<T?> showWithWidgets<T>({
        required BuildContext context,
        Widget? title,
        Widget? content,
        String? dismissText,
        String? confirmText,
        Function? dismissAction,
        Function? confirmAction,
        bool isDestructiveAction = false
    })
    {
        final List<Widget> actions = <Widget>[];

        // TODO: upper case?

        if (dismissText != null)
            actions.add(MetaAlertDialogButton(text: dismissText, onPressed: dismissAction as void Function()?));

        if (confirmText != null)
            actions.add(MetaAlertDialogButton(text: confirmText, isDestructiveAction: isDestructiveAction, onPressed: confirmAction as void Function()?));

        return showDialog(context: context, builder: (BuildContext context)
            => MetaAlertDialog(title: title, content: content, actions: actions));
    }
}
