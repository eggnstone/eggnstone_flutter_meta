import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PaddingConsts.dart';

class NormalPadding extends StatelessWidget
{
    final Widget child;

    const NormalPadding({
        Key key,
        this.child
    }) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: PaddingConsts.GLOBAL_NORMAL_PADDING
            ),
            child: child
        );
    }
}
