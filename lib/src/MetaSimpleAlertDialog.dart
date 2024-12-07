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
        VoidCallback? dismissAction,
        VoidCallback? confirmAction,
        bool isDestructiveAction = false
    })
    => showWithWidgets(
        context: context,
        title: title == null ? null : Text(title),
        content: content == null ? null : Text(content),
        dismissText: dismissText,
        confirmText: confirmText,
        dismissAction: dismissAction,
        confirmAction: confirmAction,
        isDestructiveAction: isDestructiveAction
    );

    static Future<T?> showWithWidgets<T>({
        required BuildContext context,
        Widget? title,
        Widget? content,
        String? dismissText,
        String? confirmText,
        VoidCallback? dismissAction,
        VoidCallback? confirmAction,
        bool isDestructiveAction = false
    })
    {
        final List<Widget> actions = <Widget>[];

        // TODO: upper case?
        // TODO: why is "Material" required? In an actual app it shows text as red with double yellow underline.

        if (dismissText != null)
            actions.add(
                Material(
                    color: Colors.transparent,
                    child: MetaAlertDialogButton(
                        text: dismissText, 
                        onPressed: dismissAction
                    )
                )
            );

        if (confirmText != null)
            actions.add(
                Material(
                    color: Colors.transparent,
                    child: MetaAlertDialogButton(
                        text: confirmText, 
                        isDestructiveAction: isDestructiveAction, 
                        onPressed: confirmAction
                    )
                )
            );

        return showDialog(
            context: context,
            builder: (BuildContext context)
            => MetaAlertDialog(
                title: title, 
                content: content, 
                actions: actions
            )
        );
    }
}
