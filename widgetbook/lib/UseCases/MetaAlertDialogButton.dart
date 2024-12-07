import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../ExpandedShowcase.dart';

@widgetbook_annotation.UseCase(name: '<normal>', type: MetaAlertDialogButton)
Widget buildMetaAlertDialogButton(BuildContext context)
=> const ExpandedShowcase(
    child: MetaAlertDialogButton(
        text: 'Text'
    )
);

@widgetbook_annotation.UseCase(name: 'Why different between Cupertino and Material?', type: MetaAlertDialogButton)
Widget buildMetaAlertDialogButton2(BuildContext context)
=> const MetaAlertDialogButton(
    text: 'Text'
);

@widgetbook_annotation.UseCase(name: 'Red', type: MetaAlertDialogButton)
Widget buildMetaAlertDialogButtonRed(BuildContext context)
{
    final TextStyle defaultTextStyle = DefaultTextStyle.of(context).style.copyWith(color: Colors.red);

    return ExpandedShowcase(
        child: DefaultTextStyle(
            style: defaultTextStyle,
            child: const MetaAlertDialogButton(
                text: 'Text'
            )
        )
    );
}
