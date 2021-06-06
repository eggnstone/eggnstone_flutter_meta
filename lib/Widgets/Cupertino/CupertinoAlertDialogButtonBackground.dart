import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogButtonBackground extends StatefulWidget
{
    final Widget? child;
    final Color? pressedColor;

    CupertinoAlertDialogButtonBackground({
        this.child,
        this.pressedColor
    });

    @override
    _CupertinoAlertDialogButtonBackgroundState createState()
    => _CupertinoAlertDialogButtonBackgroundState();
}

class _CupertinoAlertDialogButtonBackgroundState extends State<CupertinoAlertDialogButtonBackground>
{
    bool _tapped = false;

    @override
    Widget build(BuildContext context)
    {
        return GestureDetector(
            //behavior: HitTestBehavior.opaque,
            child: Container(
                decoration: BoxDecoration(color: _tapped ? widget.pressedColor : Colors.transparent), // Color.fromARGB(50, 255, 0, 0)),
                child: widget.child
            ),
            onTapDown: (_)
            {
                setState(()
                {
                    _tapped = true;
                });
            },
            onTapUp: (_)
            {
                setState(()
                {
                    _tapped = false;
                });
            },
            onTapCancel: ()
            {
                setState(()
                {
                    _tapped = false;
                });
            }
        );
    }
}
