import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

@widgetbook_annotation.UseCase(name: '<normal>', type: MetaAlertDialog)
Widget buildMetaAlertDialog(BuildContext context)
=> const MetaAlertDialog(
    title: Text('Title'),
    content: Text('Content'),
    actions: <Widget>[
        MetaAlertDialogButton(
            text: 'Cancel',
            onPressed: _dummyOnPressed
        ),
        MetaAlertDialogButton(
            text: 'Ok',
            onPressed: _dummyOnPressed
        )
    ]
);

@widgetbook_annotation.UseCase(name: 'Destructive action', type: MetaAlertDialog)
Widget buildMetaAlertDialogDestructive(BuildContext context)
=> const MetaAlertDialog(
    title: Text('Title'),
    content: Text('Content'),
    actions: <Widget>[
        MetaAlertDialogButton(
            text: 'Cancel',
            onPressed: _dummyOnPressed
        ),
        MetaAlertDialogButton(
            isDestructiveAction: true,
            text: 'Delete',
            onPressed: _dummyOnPressed
        )
    ]
);

@widgetbook_annotation.UseCase(name: 'OK is disabled', type: MetaAlertDialog)
Widget buildMetaAlertDialogOkDisabled(BuildContext context)
=> const MetaAlertDialog(
    title: Text('Title'),
    content: Text('Content'),
    actions: <Widget>[
        MetaAlertDialogButton(
            text: 'Cancel',
            onPressed: _dummyOnPressed
        ),
        MetaAlertDialogButton(
            text: 'Ok'
        )
    ]
);

@widgetbook_annotation.UseCase(name: 'Three actions, middle disabled', type: MetaAlertDialog)
Widget buildMetaAlertDialogThreeActionsMiddleDisabled(BuildContext context)
=> const MetaAlertDialog(
    title: Text('Title'),
    content: Text('Content'),
    actions: <Widget>[
        MetaAlertDialogButton(
            text: 'Left',
            onPressed: _dummyOnPressed
        ),
        MetaAlertDialogButton(
            text: 'Middle'
        ),
        MetaAlertDialogButton(
            text: 'Right',
            onPressed: _dummyOnPressed
        )
    ]
);

void _dummyOnPressed()
{
}
