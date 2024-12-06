
import 'package:flutter/material.dart';

import 'PaddingConsts.dart';

class CardPadding extends StatelessWidget
{
    final Widget? child;

    const CardPadding({
        this.child,
        super.key
    });

    @override
    Widget build(BuildContext context)
    => Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: PaddingConsts.GLOBAL_NORMAL_PADDING - PaddingConsts.INHERENT_CARD_PADDING_HORIZONTAL
        ),
        child: child
    );
}
