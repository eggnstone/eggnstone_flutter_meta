// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Constants/ColorConstants.dart';
import 'Meta.dart';
import 'MetaDesign.dart';
import 'MetaStatelessWidget.dart';
import 'Tools/MetaStringTools.dart';

class MetaAlertDialogButton extends MetaStatelessWidget
{
    final bool isDestructiveAction;
    final String text;
    final VoidCallback? onPressed;

    const MetaAlertDialogButton({
        required this.text,
        this.onPressed,
        this.isDestructiveAction = false,
        super.design,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (design == MetaDesign.Cupertino || (Meta.isDesignCupertino && design == null))
        {
            // https://github.com/flutter/flutter/issues/119054#issuecomment-2170983127
            return GestureDetector(
                child: CupertinoDialogAction(
                    child: Text(text),
                    isDestructiveAction: isDestructiveAction,
                    onPressed: onPressed
                ),
                onTap: onPressed
            );
        }

        final ThemeData theme = Theme.of(context);
        final TextStyle labelLargeTextStyle = theme.textTheme.labelLarge!;
        final bool isDark = theme.brightness == Brightness.dark;
        final Color normalColor = isDark ? Colors.white : ColorConstants.TEXT_BUTTON__NORMAL_LIGHT_FOREGROUND_COLOR;
        final Color destructiveColor = isDark ? ColorConstants.TEXT_BUTTON__DARK_DESTRUCTIVE_FOREGROUND_COLOR : Colors.red;
        final Color disabledColor = isDark ? ColorConstants.TEXT_BUTTON__DARK_DISABLED_FOREGROUND_COLOR : Colors.grey;
        final Color textColor = onPressed == null ? disabledColor : isDestructiveAction ? destructiveColor : normalColor;
        final TextStyle textStyle = labelLargeTextStyle.copyWith(color: textColor);

        return TextButton(
            child: Text(MetaStringTools.toUpperCase(text), style: textStyle),
            onPressed: onPressed 
        );
    }
}
