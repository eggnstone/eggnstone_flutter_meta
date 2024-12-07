import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../ExpandedShowcase.dart';

@widgetbook_annotation.UseCase(name: '<normal>', type: MetaRaisedTextButton)
Widget buildMetaRaisedTextButton(BuildContext context)
=> ExpandedShowcase(
    child: MetaRaisedTextButton(
        color: context.knobs.boolean(label: 'Specific color (orange)') ? Colors.orange : null,
        textColor: context.knobs.boolean(label: 'Specific textColor (green)') ? Colors.lightGreen : null,
        text: 'Text',
        onPressed: ()
        {
        }
    )
);

@widgetbook_annotation.UseCase(name: 'Disabled', type: MetaRaisedTextButton)
Widget buildMetaRaisedTextButtonDisabled(BuildContext context)
=> ExpandedShowcase(
    child: MetaRaisedTextButton(
        color: context.knobs.boolean(label: 'Specific color (orange)') ? Colors.orange : null,
        textColor: context.knobs.boolean(label: 'Specific textColor (green)') ? Colors.lightGreen : null,
        text: 'Text'
    )
);
