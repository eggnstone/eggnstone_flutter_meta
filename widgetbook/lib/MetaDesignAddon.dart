import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class MetaDesignAddon extends WidgetbookAddon<MetaDesign?>
{
    final MetaDesign? initialMetaDesign;

    MetaDesignAddon({
        this.initialMetaDesign
    }) : super(name: 'MetaDesign');

    @override
    Widget buildUseCase(
        BuildContext context,
        Widget child,
        MetaDesign? setting
    )
    {
        Meta.forceDesign = setting;
        return child;
    }

    @override
    List<Field<MetaDesign?>> get fields
    => <Field<MetaDesign?>>[
        ListField<MetaDesign?>(
            initialValue: initialMetaDesign,
            labelBuilder: (MetaDesign? value)
            => switch (value)
            {
                MetaDesign.Cupertino => 'Cupertino',
                MetaDesign.Material => 'Material',
                null => 'Auto'
            },
            name: 'MetaDesign',
            values: <MetaDesign?>[
                null,
                MetaDesign.Cupertino,
                MetaDesign.Material
            ]
        )
    ];

    @override
    MetaDesign? valueFromQueryGroup(Map<String, String> group)
    => valueOf<MetaDesign?>('MetaDesign', group);
}
