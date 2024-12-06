
// ignore_for_file: diagnostic_describe_all_properties

import 'package:eggnstone_dart/eggnstone_dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

    const MetaTextField({
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
        this.textCapitalization = TextCapitalization.none,
        super.key
    });

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            final ThemeData theme = Theme.of(context);
            final CupertinoThemeData cupertinoTheme = CupertinoTheme.of(context);

            logDebug('Theme: ${theme.brightness}');
            logDebug('CupertinoTheme: ${cupertinoTheme.brightness}');
            final Color boxDecorationColor = cupertinoTheme.brightness == Brightness.light ? const Color(0x33FFFFFF) : const Color(0x33000000);

            const BorderSide kDefaultRoundedBorderSide = BorderSide(
                color: CupertinoDynamicColor.withBrightness(
                    color: Color(0x33000000),
                    darkColor: Color(0x33FFFFFF)
                ),
                width: 0
            );

            const Border kDefaultRoundedBorder = Border(
                top: kDefaultRoundedBorderSide,
                bottom: kDefaultRoundedBorderSide,
                left: kDefaultRoundedBorderSide,
                right: kDefaultRoundedBorderSide
            );

            final BoxDecoration defaultRoundedBorderDecoration = BoxDecoration(
                /*color: CupertinoDynamicColor.withBrightness(
                    color: CupertinoColors.white,
                    darkColor: CupertinoColors.black,
                ),*/
                color: boxDecorationColor,
                border: kDefaultRoundedBorder,
                borderRadius: const BorderRadius.all(Radius.circular(5))
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
