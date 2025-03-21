
import 'package:flutter/cupertino.dart';

import 'Padding/PaddingConsts.dart';

class MetaRaisedButtonPadding extends StatelessWidget
{
    final Widget? child;

    const MetaRaisedButtonPadding({
        this.child,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (child is CupertinoButton)
            return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: PaddingConsts.GLOBAL_NORMAL_PADDING - PaddingConsts.INHERENT_CUPERTINO_BUTTON_PADDING_HORIZONTAL
                ),
                child: child
            );

        return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: PaddingConsts.GLOBAL_NORMAL_PADDING - PaddingConsts.INHERENT_BUTTON_PADDING_HORIZONTAL
            ),
            child: child
        );
    }
}
