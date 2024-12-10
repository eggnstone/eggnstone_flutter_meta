import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../Tools/ThemeTools.dart';
import '../Tools/WidgetbookTools.dart';

@widgetbook_annotation.UseCase(name: '<normal>', type: MetaAlertDialog)
Widget buildMetaAlertDialog(BuildContext context)
=> buildMetaAlertDialogs(context, <String>['Cancel', 'Ok'], <bool>[true, true], <bool>[false, false]);

@widgetbook_annotation.UseCase(name: 'Destructive action', type: MetaAlertDialog)
Widget buildMetaAlertDialogDestructive(BuildContext context)
=> buildMetaAlertDialogs(context, <String>['Cancel', 'Delete'], <bool>[true, true], <bool>[false, true]);

@widgetbook_annotation.UseCase(name: 'OK is disabled', type: MetaAlertDialog)
Widget buildMetaAlertDialogOkDisabled(BuildContext context)
=> buildMetaAlertDialogs(context, <String>['Cancel', 'Ok'], <bool>[true, false], <bool>[false, false]);

@widgetbook_annotation.UseCase(name: 'Three actions, middle disabled', type: MetaAlertDialog)
Widget buildMetaAlertDialogThreeActionsMiddleDisabled(BuildContext context)
=> buildMetaAlertDialogs(context, <String>['Left', 'Middle', 'Right'],<bool>[true, false, true], <bool>[false, false, false]);

Widget buildMetaAlertDialogs(BuildContext context, List<String> actionTexts, List<bool> actionsAreEnabled, List<bool> actionsAreDestructive)
=> Center(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    Theme(
                        data: ThemeTools.createDefaultMaterialLightThemeData(context),
                        child: _createMetaAlertDialog(context, MetaDesign.Material,  actionTexts,   actionsAreEnabled, actionsAreDestructive)
                    ),
                    Theme(
                        data: ThemeTools.createDefaultMaterialDarkThemeData(context),
                        child: _createMetaAlertDialog(context, MetaDesign.Material,  actionTexts,   actionsAreEnabled, actionsAreDestructive)
                    )
                ]
            ),
            Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    CupertinoTheme(
                        data: ThemeTools.createDefaultCupertinoLightThemeData(context),
                        child: _createMetaAlertDialog(context, MetaDesign.Cupertino,  actionTexts,   actionsAreEnabled, actionsAreDestructive)
                    ),
                    CupertinoTheme(
                        data: ThemeTools.createDefaultCupertinoDarkThemeData(context),
                        child: _createMetaAlertDialog(context, MetaDesign.Cupertino,  actionTexts,   actionsAreEnabled, actionsAreDestructive)
                    )
                ]
            )
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
