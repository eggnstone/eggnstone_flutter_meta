/*
import 'package:flutter/material.dart';


import 'src/Meta.dart';

class MetaToggleButtons
{
    static Widget createMaterial<T>({
        @required List<Widget> children,
        @required List<bool> isSelected,
        Function(int index) onPressed,
    })
    {
        assert(children != null);
        assert(isSelected != null);

        ToggleButtons toggleButtons = ToggleButtons(
            children: children,
            isSelected: isSelected,
            onPressed: onPressed,
        );

        if (Meta.isDesignCupertino)
            return Material(
                color: Colors.transparent,
                child: toggleButtons,
            );

        return toggleButtons;
    }
}
*/
