import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'NullableEnum.dart';

class MetaDesignAddon extends WidgetbookAddon<NullableEnum<MetaDesign>>
{
    final NullableEnum<MetaDesign> initialMetaDesign;

    MetaDesignAddon({
        this.initialMetaDesign = const NullableEnum<MetaDesign>(null)
    }) : super(name: 'MetaDesign');

    @override
    Widget buildUseCase(
        BuildContext context,
        Widget child,
        NullableEnum<MetaDesign> setting
    )
    {
        //print('buildUseCase: $setting');
        Meta.forceDesign = setting.value;
        return child;
    }

    @override
    List<Field<NullableEnum<MetaDesign>>> get fields
    => <Field<NullableEnum<MetaDesign>>>[
        ListField<NullableEnum<MetaDesign>>(
            initialValue: initialMetaDesign,
            labelBuilder: (NullableEnum<MetaDesign> value)
            => switch (value.value)
            {
                MetaDesign.Cupertino  => 'Cupertino',
                MetaDesign.Material => 'Material',
                //MetaDesign.Web => 'Web',
                null => 'Auto'
            },
            name: 'MetaDesign',
            values: <NullableEnum<MetaDesign>>[
                const NullableEnum<MetaDesign>(null),
                const NullableEnum<MetaDesign>(MetaDesign.Cupertino),
                const NullableEnum<MetaDesign>(MetaDesign.Material)
            //const NullableEnum<MetaDesign>(MetaDesign.Web)
            ]
        )
    ];

    @override
    NullableEnum<MetaDesign> valueFromQueryGroup(Map<String, String> group)
    => valueOf<NullableEnum<MetaDesign>>('MetaDesign', group)!;
}
