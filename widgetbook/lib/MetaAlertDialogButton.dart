import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

@widgetbook_annotation.UseCase(name: 'MetaAlertDialogButton', type: MetaAlertDialogButton, path: 'widgets')
Widget buildMetaAlertDialogButton(BuildContext context)
{
    // TODO: make an add-pn
    final bool isCupertino = context.knobs.boolean(
        label: 'Is Cupertino'
    );

    Meta.forceDesign = isCupertino ? MetaDesign.Cupertino : MetaDesign.Material;

    final bool useRedAsDefaultTextStyleColor = context.knobs.boolean(
        label: 'Use red as default text-style color'
    );

    TextStyle defaultTextStyle = DefaultTextStyle.of(context).style;
    if (useRedAsDefaultTextStyleColor)
        defaultTextStyle = defaultTextStyle.copyWith(color: Colors.red);

    print('defaultTextStyle 1: $defaultTextStyle');

    return DefaultTextStyle(
        style: defaultTextStyle,
        child: const MetaAlertDialogButton(
            text: 'Text'
        )
    );
}
