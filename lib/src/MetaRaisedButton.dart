/*

import 'package:flutter/material.dart';
import 'package:flutter_native_feel/flutter_native_feel.dart';

import 'src/Meta.dart';

class MetaRaisedButton extends StatelessWidget
{
    final Widget child;
    final Color color;
    final VoidCallback onPressed;
    final Color textColor;

    MetaRaisedButton({
        this.child,
        this.color,
        this.onPressed,
        this.textColor
    })
    {
        // TODO: if debug
        assert(_checkWidget(child));
    }

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            CupertinoThemeData theme = CupertinoTheme.of(context);
            Color actualColor = color == null ? theme.brightness == Brightness.dark ? theme.primaryColor : Colors.grey[300] : color;

            return CupertinoButton(
                child: child,
                color: actualColor,
                minSize: 1.0,
                onPressed: onPressed,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            );
        }

        ThemeData materialTheme = Theme.of(context);
        Color actualColor = color == null ? materialTheme.buttonColor : color;
        Color actualContentColor = textColor == null ? (actualColor.computeLuminance() < 0.5 ? Colors.white : Colors.black) : textColor;

        return ElevatedButton(
            child: child,
            color: actualColor,
            onPressed: onPressed,
            textColor: actualContentColor
        );
    }

    bool _checkWidget(Widget widget)
    {
        if (widget is Text)
        {
            logDebug('################################################################################');
            logDebug('# MetaRaisedButton: Use NativeButtonText instead of Text');
            logDebug('################################################################################');
            return false;
        }
        else if (widget is NativeButtonText)
        {
            // good
            return true;
        }
        else if (widget is Column)
        {
            for (Widget c in widget.children)
                if (_checkWidget(c) == false)
                    return false;
        }
        else if (widget is Row)
        {
            for (Widget c in widget.children)
                if (_checkWidget(c) == false)
                    return false;
        }
        else
        {
            logDebug('################################################################################');
            logDebug('# MetaRaisedButton: Unhandled child: ${widget.runtimeType}');
            logDebug('################################################################################');
            return false;
        }
    }
}
*/
