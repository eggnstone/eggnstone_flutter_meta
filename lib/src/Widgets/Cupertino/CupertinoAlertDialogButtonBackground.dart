// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/material.dart';

class CupertinoAlertDialogButtonBackground extends StatefulWidget
{
    final Widget? child;
    final Color? pressedColor;

    const CupertinoAlertDialogButtonBackground({
        this.child,
        this.pressedColor,
        super.key
    });

    @override
    State<CupertinoAlertDialogButtonBackground> createState()
    => _CupertinoAlertDialogButtonBackgroundState();
}

class _CupertinoAlertDialogButtonBackgroundState extends State<CupertinoAlertDialogButtonBackground>
{
    bool _tapped = false;

    @override
    Widget build(BuildContext context)
    => GestureDetector(
        //behavior: HitTestBehavior.opaque,
        child: DecoratedBox(
            decoration: BoxDecoration(color: _tapped ? widget.pressedColor : Colors.transparent), // Color.fromARGB(50, 255, 0, 0)),
            child: widget.child
        ),
        onTapDown: (_)
        {
            setState(()
                {
                    _tapped = true;
                }
            );
        },
        onTapUp: (_)
        {
            setState(()
                {
                    _tapped = false;
                }
            );
        },
        onTapCancel: ()
        {
            setState(()
                {
                    _tapped = false;
                }
            );
        }
    );
}
