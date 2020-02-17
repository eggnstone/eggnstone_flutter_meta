import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CupertinoAlertDialogButtonBackground.dart';

/*
Known issues:
- default action not bold (but Flutter's CupertinoAlertDialog also doesn't have bold)
- no "destructive" mode
- no "disabled" mode
- no padding around buttons, they could grow further than they should but otherwise no full area tapping
*/
class CupertinoMaxSizeAlertDialog extends StatelessWidget
{
    static const TextStyle _kCupertinoDialogTitleStyle = TextStyle(
        fontFamily: '.SF UI Display',
        inherit: false,
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: CupertinoColors.black,
        letterSpacing: 0.48,
        textBaseline: TextBaseline.alphabetic,
    );

    static const TextStyle _kCupertinoDialogContentStyle = TextStyle(
        fontFamily: '.SF UI Text',
        inherit: false,
        fontSize: 13.4,
        fontWeight: FontWeight.w400,
        color: CupertinoColors.black,
        height: 1.036,
        letterSpacing: -0.25,
        textBaseline: TextBaseline.alphabetic,
    );

    static const TextStyle _kCupertinoDialogActionStyle = TextStyle(
        fontFamily: '.SF UI Text',
        inherit: false,
        fontSize: 16.8,
        fontWeight: FontWeight.w400,
        color: CupertinoColors.activeBlue,
        textBaseline: TextBaseline.alphabetic,
    );

    //static const double _kMinButtonHeight = 45.0;

    //static const Color _kDialogPressedColor = Color(0x90FFFFFF);
    static const Color _kDialogPressedColor_LightTheme = Color(0xFFF5F5F5);
    static const Color _kDialogPressedColor_DarkTheme = Color(0xFFACACAC);

    final Widget title;
    final Widget content;
    final List<Widget> actions;

    CupertinoMaxSizeAlertDialog({
        this.title,
        this.content,
        this.actions,
    }) : assert(actions != null && actions.length == 2);

    @override
    Widget build(BuildContext context)
    {
        ThemeData theme = Theme.of(context);
        Color pressedBackgroundColor = theme.brightness == Brightness.light ? _kDialogPressedColor_LightTheme : _kDialogPressedColor_DarkTheme;

        return Container(
            // margin instead of padding because margin is not clickable!
            margin: const EdgeInsets.all(20.0),
            child: CupertinoPopupSurface(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                            child: DefaultTextStyle(
                                style: _kCupertinoDialogTitleStyle,
                                textAlign: TextAlign.center,
                                child: title
                            )
                        ),
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 20.0, top: 2.0, right: 20.0),
                                child: DefaultTextStyle(
                                    style: _kCupertinoDialogContentStyle,
                                    child: content
                                )
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: DefaultTextStyle(
                                style: _kCupertinoDialogActionStyle,
                                textAlign: TextAlign.center,
                                child: Column(
                                    children: <Widget>[
                                        Divider(height: 0.0),
                                        Container(
                                            // no padding around buttons, they could grow further than they should but otherwise no full area tapping
                                            //padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                            child: Row(
                                                children: <Widget>[
                                                    Expanded(
                                                        child: CupertinoAlertDialogButtonBackground(
                                                            child: actions[0],
                                                            pressedColor: pressedBackgroundColor
                                                        )
                                                    ),
                                                    Container(
                                                        // no padding around buttons, they could grow further than they should but otherwise no full area tapping
                                                        //padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                                        //child: VerticalDivider(_kMinButtonHeight),
                                                        //child: VerticalDivider(color:Colors.red)
                                                    ),
                                                    Expanded(
                                                        child: CupertinoAlertDialogButtonBackground(
                                                            child: actions[1],
                                                            pressedColor: pressedBackgroundColor
                                                        )
                                                    )
                                                ]
                                            )
                                        )
                                    ]
                                )
                            )
                        )
                    ]
                )
            )
        );
    }
}
