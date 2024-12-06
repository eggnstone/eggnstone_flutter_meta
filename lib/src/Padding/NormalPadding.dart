
import 'package:flutter/material.dart';

import 'PaddingConsts.dart';

class NormalPadding extends StatelessWidget
{
    final Widget? child;

    const NormalPadding({
        this.child,
        super.key
    });

    @override
    Widget build(BuildContext context)
    => Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: PaddingConsts.GLOBAL_NORMAL_PADDING
        ),
        child: child
    );
}
