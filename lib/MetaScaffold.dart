import 'package:flutter/material.dart';

class MetaScaffold extends Scaffold
{
    MetaScaffold({
        Widget? body
    })
        : super(
        body: body
    );
}

/*

import 'package:flutter/material.dart';


import 'Meta.dart';

class MetaScaffold extends StatelessWidget
{
    final Icon cancelIcon;
    final String cancelText;
    final Widget child;
    final String confirmText;
    final String confirmTextCupertino;
    final String title;
    final String titleCupertino;

    MetaScaffold({
        this.cancelIcon,
        this.cancelText,
        this.child,
        this.confirmText,
        this.confirmTextCupertino,
        this.title,
        this.titleCupertino,
    });

    @override
    Widget build(BuildContext context)
    {
        ThemeData theme = Theme.of(context);
        CupertinoThemeData cupertinoTheme = CupertinoTheme.of(context);
        print('MetaScaffold.build: cupertinoTheme.primaryColor: ${cupertinoTheme.primaryColor}');
        print('MetaScaffold.build: theme.primaryColor: ${theme.primaryColor}');
        print('MetaScaffold.build: theme.canvasColor: ${theme.canvasColor}');
        //print('MetaScaffold.build: cupertinoTheme.canvasColor: ${cupertinoTheme.canvasColor}');

        if (Meta.isDesignCupertino && Meta.useCupertinoApp)
        {
            Color backgroundColor = Colors.grey[50];
            if (Meta.brightness == Brightness.dark)
            {
                backgroundColor = Colors.grey[850];
            }
            else if (Meta.brightness == null)
            {
                Brightness platformBrightness = MediaQuery
                    .of(context)
                    .platformBrightness;

                if (platformBrightness == Brightness.dark)
                    backgroundColor = Colors.grey[850];
            }

            return CupertinoPageScaffold(
                backgroundColor: backgroundColor,
                navigationBar: CupertinoNavigationBar(
                    //leading: Text('cup lead'), // leading: CupertinoDialogAction(child: Text(cancelText ?? 'TODO cancel'),
                    //onPressed: ()
                    //{}),
                    middle: Text(titleCupertino ?? 'cupo middle'),
                    backgroundColor: Theme
                        .of(context)
                        .primaryColor,

                    ///trailing: Text('cup trail'), // trailing: CupertinoDialogAction(child: Text(confirmTextCupertino ?? 'TODO confirm'),
                    //onPressed: ()
                    //{})
                ),
                child: child);
        }

        return Scaffold(
            backgroundColor: theme.canvasColor,
            appBar: AppBar(
                backgroundColor: theme.primaryColor,
                leading: Text('mat lead'), // cancelIcon ?? Icon(Icons.device_unknown),
                title: Text(title ?? 'mat title'),
                actions: <Widget>[
                    TextButton(
                        child: Text((confirmText ?? 'mat action').toUpperCase()),
                        onPressed: ()
                        {}
                    )
                ]
            ),
            body: child);
    }
}
*/
