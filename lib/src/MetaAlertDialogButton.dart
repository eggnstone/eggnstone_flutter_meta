// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            return CupertinoDialogAction(
                child: Text(text),
                isDestructiveAction: isDestructiveAction,
                onPressed: onPressed
            );
        }

        final ThemeData theme = Theme.of(context);
        final bool isDark = theme.brightness == Brightness.dark;
        final Color normalColor = isDark ? Colors.white : Color(0xff222222);
        final Color destructiveColor = isDark ? Color(0xffff2222) : Colors.red;
        final Color textColor = onPressed == null ? Colors.grey : isDestructiveAction ? destructiveColor : normalColor;

        // TODO: find a better way than creating a dummy button.
        final TextButton textButton = TextButton(onPressed: onPressed, child: Text(text));
        final ButtonStyle defaultButtonStyle = textButton.defaultStyleOf(context);
        final WidgetStateProperty<TextStyle?> defaultTextStyleProperty = defaultButtonStyle.textStyle!;
        final TextStyle defaultTextStyle = defaultTextStyleProperty.resolve(<WidgetState>{})!;
        final TextStyle textStyle = defaultTextStyle.copyWith(color: textColor);

        return TextButton(
            child: Text(MetaStringTools.toUpperCase(text), style: textStyle),
            onPressed: onPressed 
        );
    }
}
