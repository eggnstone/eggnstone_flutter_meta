import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Meta.dart';

class MetaTextField extends StatelessWidget
{
    /// [decorationMaterial] Cupertino: use placeholderCupertino
    /// [placeholderCupertino] Non-Cupertino: use decorationMaterial
    final bool autofocus;
    final TextEditingController? controller;
    final InputDecoration? decorationMaterial;
    final bool? enabled;
    final bool expands;
    final FocusNode? focusNode;
    final TextInputType? keyboardType;
    final int? maxLines;
    final int? minLines;
    final bool obscureText;
    final ValueChanged<String>? onSubmitted;
    final String? placeholderCupertino;
    final TextStyle? style;
    final TextCapitalization textCapitalization;

    MetaTextField({
        this.autofocus = false,
        this.controller,
        this.decorationMaterial,
        this.enabled,
        this.expands = false,
        this.focusNode,
        this.keyboardType,
        this.maxLines,
        this.minLines,
        this.obscureText = false,
        this.onSubmitted,
        this.placeholderCupertino,
        this.style,
        this.textCapitalization = TextCapitalization.none
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            ThemeData theme = Theme.of(context);
            CupertinoThemeData cupertinoTheme = CupertinoTheme.of(context);

            print('Theme: ${theme.brightness}');
            print('CupertinoTheme: ${cupertinoTheme.brightness}');
            Color boxDecorationColor = cupertinoTheme.brightness == Brightness.light ? Color(0x33FFFFFF) : Color(0x33000000);

            const BorderSide _kDefaultRoundedBorderSide = BorderSide(
                color: CupertinoDynamicColor.withBrightness(
                    color: Color(0x33000000),
                    darkColor: Color(0x33FFFFFF),
                ),
                style: BorderStyle.solid,
                width: 0.0,
            );

            const Border _kDefaultRoundedBorder = Border(
                top: _kDefaultRoundedBorderSide,
                bottom: _kDefaultRoundedBorderSide,
                left: _kDefaultRoundedBorderSide,
                right: _kDefaultRoundedBorderSide,
            );

            BoxDecoration defaultRoundedBorderDecoration = BoxDecoration(
                /*color: CupertinoDynamicColor.withBrightness(
                    color: CupertinoColors.white,
                    darkColor: CupertinoColors.black,
                ),*/
                color: boxDecorationColor,
                border: _kDefaultRoundedBorder,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
            );

            return CupertinoTextField(autofocus: autofocus,
                controller: controller,
                enabled: enabled,
                expands: expands,
                focusNode: focusNode,
                keyboardType: keyboardType,
                maxLines: maxLines,
                minLines: minLines,
                obscureText: obscureText,
                onSubmitted: onSubmitted,
                placeholder: placeholderCupertino,
                style: style,
                textCapitalization: textCapitalization,
                decoration: defaultRoundedBorderDecoration
            );
        }

        return TextField(autofocus: autofocus,
            controller: controller,
            decoration: decorationMaterial,
            enabled: enabled,
            expands: expands,
            focusNode: focusNode,
            keyboardType: keyboardType,
            maxLines: maxLines,
            minLines: minLines,
            obscureText: obscureText,
            onSubmitted: onSubmitted,
            style: style,
            textCapitalization: textCapitalization
        );
    }
}
