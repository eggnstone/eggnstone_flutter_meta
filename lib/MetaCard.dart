/*

import 'package:flutter/material.dart';


import 'Meta.dart';
import 'MetaThemeData.dart';

class MetaCard extends StatelessWidget
{
    final Widget child;

    const MetaCard({Key key, this.child}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        if (Meta.isDesignCupertino)
        {
            ThemeData theme = Theme.of(context);

*/
/*
            ThemeData themeDark = ThemeData(
                brightness: Brightness.dark,
            );
*/ /*


            //Color cardColor = Colors.white;
            if (Meta.brightness == Brightness.dark)
            {
                //cardColor = Colors.grey[800];
                theme = theme.copyWith(brightness: Brightness.dark); //, cardColor: Colors.green);
            }
            else if (Meta.brightness == null)
            {
                Brightness platformBrightness = MediaQuery
                    .of(context)
                    .platformBrightness;

                if (platformBrightness == Brightness.dark)
                {
                    //cardColor = Colors.grey[800];
                    */
/*theme = theme.copyWith(brightness: Brightness.dark, cardColor: cardColor);
                    theme = ThemeData(
                        brightness: Brightness.dark,
                        primaryColor: theme.primaryColor,
                        primarySwatch: theme.primaryColor,
                    ); */ /*
 //theme.copyWith(brightness: Brightness.dark, cardColor: cardColor );

                    theme = MetaThemeData.createThemeMaterial(brightness: Brightness.dark, primaryColor: theme.primaryColor);
                }
            }

            return Theme(
                data: theme,
                child: Card(
                    //color: cardColor,
                    child: child,
                ),
            );
        }

        return Card(
            child: child,
        );
    }
}
*/
