import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../Tools/WidgetbookTools.dart';

@widgetbook_annotation.UseCase(name: '<normal>', type: MetaAlertDialog)
Widget buildMetaAlertDialog(BuildContext context)
=> Center(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            _createMetaAlertDialog(context, MetaDesign.Material, <String>['Cancel', 'Ok'], <bool>[true, true], <bool>[false, false]),
            _createMetaAlertDialog(context, MetaDesign.Cupertino, <String>['Cancel', 'Ok'], <bool>[true, true], <bool>[false, false])
        ]
    )
);

@widgetbook_annotation.UseCase(name: 'Destructive action', type: MetaAlertDialog)
Widget buildMetaAlertDialogDestructive(BuildContext context)
=> Center(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            _createMetaAlertDialog(context, MetaDesign.Material, <String>['Cancel', 'Delete'], <bool>[true, true], <bool>[false, true]),
            _createMetaAlertDialog(context, MetaDesign.Cupertino, <String>['Cancel', 'Delete'], <bool>[true, true], <bool>[false, true])
        ]
    )
);

@widgetbook_annotation.UseCase(name: 'OK is disabled', type: MetaAlertDialog)
Widget buildMetaAlertDialogOkDisabled(BuildContext context)
=> Center(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            _createMetaAlertDialog(context, MetaDesign.Material, <String>['Cancel', 'Ok'], <bool>[true, false], <bool>[false, false]),
            _createMetaAlertDialog(context, MetaDesign.Cupertino, <String>['Cancel', 'Ok'], <bool>[true, false], <bool>[false, false])
        ]
    )
);

@widgetbook_annotation.UseCase(name: 'Three actions, middle disabled', type: MetaAlertDialog)
Widget buildMetaAlertDialogThreeActionsMiddleDisabled(BuildContext context)
=> Center(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            _createMetaAlertDialog(context, MetaDesign.Material, <String>['Left', 'Middle', 'Right'], <bool>[true, false, true], <bool>[false, false, false]),
            _createMetaAlertDialog(context, MetaDesign.Cupertino, <String>['Left', 'Middle', 'Right'], <bool>[true, false, true], <bool>[false, false, false])
        ]
    )
);

Widget _createMetaAlertDialog(BuildContext context, MetaDesign design, List<String> actionTexts, List<bool> actionsAreEnabled, List<bool> actionsAreDestructive)
{
    final List<Widget> actions = <Widget>[];
    for (int i = 0; i < actionTexts.length; i++)
    {
        actions.add(
            MetaAlertDialogButton(
                design: design,
                text: actionTexts[i],
                isDestructiveAction: actionsAreDestructive[i],
                onPressed: actionsAreEnabled[i] ? WidgetbookTools.dummyOnPressed : null
            )
        );
    }

    return MetaAlertDialog(
        design: design,
        title: const Text('Title'),
        content: const Text('Content'),
        actions: actions
    );
}
