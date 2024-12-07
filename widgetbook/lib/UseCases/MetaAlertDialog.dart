import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

@widgetbook_annotation.UseCase(name: '<normal>', type: MetaAlertDialog)
Widget buildMetaAlertDialog(BuildContext context)
=> MetaAlertDialog(
    title: const Text('Title'),
    content: const Text('Content'),
    actions: <Widget>[
        MetaAlertDialogButton(
            text: 'Cancel',
            onPressed: ()
            {
                Navigator.pop(context);
            }
        ),
        MetaAlertDialogButton(
            text: 'Ok',
            onPressed: ()
            {
                Navigator.pop(context);
            }
        )
    ]
);

@widgetbook_annotation.UseCase(name: 'Destructive action', type: MetaAlertDialog)
Widget buildMetaAlertDialogDestructive(BuildContext context)
=> MetaAlertDialog(
    title: const Text('Title'),
    content: const Text('Content'),
    actions: <Widget>[
        MetaAlertDialogButton(
            text: 'Cancel',
            onPressed: ()
            {
                Navigator.pop(context);
            }
        ),
        MetaAlertDialogButton(
            isDestructiveAction: true,
            text: 'Delete',
            onPressed: ()
            {
                Navigator.pop(context);
            }
        )
    ]
);
