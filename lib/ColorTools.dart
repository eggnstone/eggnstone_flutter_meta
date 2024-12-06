import 'package:flutter/material.dart';

class ColorTools
{
    static Color changeLuminance(Color color, double factor)
    {
        assert(factor >= 0 && factor <= 2, 'The factor must be between 0 and 2.');

        final HSLColor hsl = HSLColor.fromColor(color);
        final HSLColor hslDark = hsl.withLightness((hsl.lightness * factor).clamp(0.0, 1.0));

        return hslDark.toColor();
    }

    static MaterialColor? createMaterialColor(Color? color)
    {
        if (color == null)
            return null;

        return MaterialColor(
            color.value,
            <int, Color>{
                50: changeLuminance(color, 1.74),
                100: changeLuminance(color, 1.59),
                200: changeLuminance(color, 1.425),
                300: changeLuminance(color, 1.251),
                400: changeLuminance(color, 1.125),
                500: color,
                600: changeLuminance(color, 0.94),
                700: changeLuminance(color, 0.85),
                800: changeLuminance(color, 0.77),
                900: changeLuminance(color, 0.63),
            }
        );

        /*
        final MaterialColor materialColor = MaterialColor(
            color.value,
            <int, Color>{
                50: Color(0xFFE3F2FD), //  227 242 253     205  10  99
                100: Color(0xFFBBDEFB), //  187 222 251     207  25  98
                200: Color(0xFF90CAF9), //  144 202 249     206  42  97
                300: Color(0xFF64B5F6), //  100 181 246     206  59  96
                400: Color(0xFF42A5F5), //   66 165 245     206  73  96
                500: Color(0xFF2196F3), //   33 150 243     206  86  95 base
                600: Color(0xFF1E88E5), //   30 136 229     208  86  89
                700: Color(0xFF1976D2), //   25 118 210     209  88  82
                800: Color(0xFF1565C0), //   21 101 192     211  89  75
                900: Color(0xFF0D47A1), //   13  71 161     216  91  63
            },
        );

        Color c500 = Colors.blue.shade500;
        logDebug("");

        Color c50 = Colors.blue.shade50;
        logDebug('c50:  ' + c50.toString() + " " + c50.red.toString() + " " + c50.green.toString() + " " + c50.blue.toString() + " " + HSLColor
            .fromColor(c50)
            .lightness
            .toString());
        Color d50 = changeLuminance(c500, 1.74);
        logDebug('d50:  ' + d50.toString() + " " + d50.red.toString() + " " + d50.green.toString() + " " + d50.blue.toString() + " " + HSLColor
            .fromColor(d50)
            .lightness
            .toString());

        Color c100 = Colors.blue.shade100;
        logDebug('c100: ' + c100.toString() + " " + c100.red.toString() + " " + c100.green.toString() + " " + c100.blue.toString() + " " + HSLColor
            .fromColor(c100)
            .lightness
            .toString());
        Color d100 = changeLuminance(c500, 1.59);
        logDebug('d100: ' + d100.toString() + " " + d100.red.toString() + " " + d100.green.toString() + " " + d100.blue.toString() + " " + HSLColor
            .fromColor(d100)
            .lightness
            .toString());

        Color c200 = Colors.blue.shade200;
        logDebug('c200: ' + c200.toString() + " " + c200.red.toString() + " " + c200.green.toString() + " " + c200.blue.toString() + " " + HSLColor
            .fromColor(c200)
            .lightness
            .toString());
        Color d200 = changeLuminance(c500, 1.425);
        logDebug('d200: ' + d200.toString() + " " + d200.red.toString() + " " + d200.green.toString() + " " + d200.blue.toString() + " " + HSLColor
            .fromColor(d200)
            .lightness
            .toString());

        Color c300 = Colors.blue.shade300;
        logDebug('c300: ' + c300.toString() + " " + c300.red.toString() + " " + c300.green.toString() + " " + c300.blue.toString() + " " + HSLColor
            .fromColor(c300)
            .lightness
            .toString());
        Color d300 = changeLuminance(c500, 1.251);
        logDebug('d300: ' + d300.toString() + " " + d300.red.toString() + " " + d300.green.toString() + " " + d300.blue.toString() + " " + HSLColor
            .fromColor(d300)
            .lightness
            .toString());

        Color c400 = Colors.blue.shade400;
        logDebug('c400: ' + c400.toString() + " " + c400.red.toString() + " " + c400.green.toString() + " " + c400.blue.toString() + " " + HSLColor
            .fromColor(c400)
            .lightness
            .toString());
        Color d400 = changeLuminance(c500, 1.125);
        logDebug('d400: ' + d400.toString() + " " + d400.red.toString() + " " + d400.green.toString() + " " + d400.blue.toString() + " " + HSLColor
            .fromColor(d400)
            .lightness
            .toString());

        logDebug('c500: ' + c500.toString() + " " + c500.red.toString() + " " + c500.green.toString() + " " + c500.blue.toString() + " " + HSLColor
            .fromColor(c500)
            .lightness
            .toString());

        Color c600 = Colors.blue.shade600;
        logDebug('c600: ' + c600.toString() + " " + c600.red.toString() + " " + c600.green.toString() + " " + c600.blue.toString() + " " + HSLColor
            .fromColor(c600)
            .lightness
            .toString());
        Color d600 = changeLuminance(c500, 0.94);
        logDebug('d600: ' + d600.toString() + " " + d600.red.toString() + " " + d600.green.toString() + " " + d600.blue.toString() + " " + HSLColor
            .fromColor(d600)
            .lightness
            .toString());

        Color c700 = Colors.blue.shade700;
        logDebug('c700: ' + c700.toString() + " " + c700.red.toString() + " " + c700.green.toString() + " " + c700.blue.toString() + " " + HSLColor
            .fromColor(c700)
            .lightness
            .toString());
        Color d700 = changeLuminance(c500, 0.85);
        logDebug('d700: ' + d700.toString() + " " + d700.red.toString() + " " + d700.green.toString() + " " + d700.blue.toString() + " " + HSLColor
            .fromColor(d700)
            .lightness
            .toString());

        Color c800 = Colors.blue.shade800;
        logDebug('c800: ' + c800.toString() + " " + c800.red.toString() + " " + c800.green.toString() + " " + c800.blue.toString() + " " + HSLColor
            .fromColor(c800)
            .lightness
            .toString());
        Color d800 = changeLuminance(c500, 0.77);
        logDebug('d800: ' + d800.toString() + " " + d800.red.toString() + " " + d800.green.toString() + " " + d800.blue.toString() + " " + HSLColor
            .fromColor(d800)
            .lightness
            .toString());

        Color c900 = Colors.blue.shade900;
        logDebug('c800: ' + c900.toString() + " " + c900.red.toString() + " " + c900.green.toString() + " " + c900.blue.toString() + " " + HSLColor
            .fromColor(c900)
            .lightness
            .toString());
        Color d900 = changeLuminance(c500, 0.63);
        logDebug('d900: ' + d900.toString() + " " + d900.red.toString() + " " + d900.green.toString() + " " + d900.blue.toString() + " " + HSLColor
            .fromColor(d900)
            .lightness
            .toString());
        */
    }
}
