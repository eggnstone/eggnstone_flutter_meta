import 'package:flutter/material.dart';

class MetaApp extends MaterialApp
{
    MetaApp({
        Widget home,
        ThemeData theme,
    })
        : super(
        home: home,
        theme: theme,
    );
}

/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Meta.dart';
import 'MetaThemeData.dart';

class MetaApp extends StatelessWidget
{
    final bool debugShowCheckedModeBanner;
    final Widget home;
    final String initialRoute;
    final Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates;
    final List<NavigatorObserver> navigatorObservers;
    final Map<String, WidgetBuilder> routes;
    final Iterable<Locale> supportedLocales;
    final MetaThemeData theme;
    final String title;

    MetaApp({
        Key key,
        this.debugShowCheckedModeBanner = true,
        this.home,
        this.initialRoute,
        this.localizationsDelegates,
        this.navigatorObservers = const <NavigatorObserver>[],
        this.routes = const <String, WidgetBuilder>{},
        this.supportedLocales = const <Locale>[Locale('en', 'US')],
        this.theme,
        this.title = '',
    }) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        */
/*try
        {
            Brightness platformBrightness = MediaQuery
                .of(context)
                .platformBrightness;
            print('MetaApp.build: platformBrightness: $platformBrightness');
        }
        catch (exception)
        {
            print('MetaApp.build: $exception');
        }*/ /*


        if (Meta.isDesignCupertino && Meta.useCupertinoApp)
            return Theme(
                data: theme.getThemeMaterial(createDarkTheme: null),
                child: CupertinoApp(
                    debugShowCheckedModeBanner: debugShowCheckedModeBanner,
                    home: home,
                    initialRoute: initialRoute,
                    localizationsDelegates: localizationsDelegates,
                    navigatorObservers: navigatorObservers,
                    routes: routes,
                    supportedLocales: supportedLocales,
                    theme: theme.getThemeCupertino(),
                    title: title,
                ),
            );

        return MaterialApp(
            debugShowCheckedModeBanner: debugShowCheckedModeBanner,
            home: home,
            initialRoute: initialRoute,
            localizationsDelegates: localizationsDelegates,
            navigatorObservers: navigatorObservers,
            routes: routes,
            supportedLocales: supportedLocales,
            theme: theme.getThemeMaterial(createDarkTheme: false),
            darkTheme: theme.getThemeMaterial(createDarkTheme: true),
            title: title,
        );
    }
}
*/
