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
    static const TextStyle CUPERTINO_DIALOG_TITLE_STYLE = TextStyle(
        fontFamily: '.SF UI Display',
        inherit: false,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: CupertinoColors.black,
        letterSpacing: 0.48,
        textBaseline: TextBaseline.alphabetic
    );

    static const TextStyle CUPERTINO_DIALOG_CONTENT_STYLE = TextStyle(
        fontFamily: '.SF UI Text',
        inherit: false,
        fontSize: 13.4,
        fontWeight: FontWeight.w400,
        color: CupertinoColors.black,
        height: 1.036,
        letterSpacing: -0.25,
        textBaseline: TextBaseline.alphabetic
    );

    static const TextStyle CUPERTINO_DIALOG_ACTION_STYLE = TextStyle(
        fontFamily: '.SF UI Text',
        inherit: false,
        fontSize: 16.8,
        fontWeight: FontWeight.w400,
        color: CupertinoColors.activeBlue,
        textBaseline: TextBaseline.alphabetic
    );

    //static const double _kMinButtonHeight = 45.0;

    //static const Color _kDialogPressedColor = Color(0x90FFFFFF);
    static const Color DIALOG_PRESS_COLOR__LIGHT_THEME = Color(0xFFF5F5F5);
    static const Color DIALOG_PRESS_COLOR__DARK_THEME = Color(0xFFACACAC);

    final Widget? title;
    final Widget? content;
    final List<Widget>? actions;

    const CupertinoMaxSizeAlertDialog({
        this.title,
        this.content,
        this.actions,
        super.key
    }) : assert(actions != null && actions.length == 2, 'Exactly two actions must be provided');

    @override
    Widget build(BuildContext context)
    {
        final ThemeData theme = Theme.of(context);
        final Color pressedBackgroundColor = theme.brightness == Brightness.light ? DIALOG_PRESS_COLOR__LIGHT_THEME : DIALOG_PRESS_COLOR__DARK_THEME;

        return Container(
            // margin instead of padding because margin is not clickable!
            margin: const EdgeInsets.all(20),
            child: CupertinoPopupSurface(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                            child: DefaultTextStyle(
                                style: CUPERTINO_DIALOG_TITLE_STYLE,
                                textAlign: TextAlign.center,
                                child: title!
                            )
                        ),
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 20, top: 2, right: 20),
                                child: DefaultTextStyle(
                                    style: CUPERTINO_DIALOG_CONTENT_STYLE,
                                    child: content!
                                )
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: DefaultTextStyle(
                                style: CUPERTINO_DIALOG_ACTION_STYLE,
                                textAlign: TextAlign.center,
                                child: Column(
                                    children: <Widget>[
                                        const Divider(height: 0),
                                        // ignore: avoid_unnecessary_containers
                                        Container(
                                            // no padding around buttons, they could grow further than they should but otherwise no full area tapping
                                            //padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                            child: Row(
                                                children: <Widget>[
                                                    Expanded(
                                                        child: CupertinoAlertDialogButtonBackground(
                                                            child: actions![0],
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
                                                            child: actions![1],
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
