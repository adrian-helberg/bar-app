import 'package:bar_app/routes.dart';
import 'package:bar_app/style.dart';
import 'package:flutter/material.dart';
import 'screens/index/index.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      onGenerateRoute:
      routes(),
      theme: theme(),
    );
  }

  // Routes
  RouteFactory routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case IndexRoute:
          screen = Index();
          break;
        case LocationsRoute:
          // TODO: screem = Locations()
          return null; // TODO: break here
        default:
          return null;
      }

      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => screen
      );
    };
  }

  // Themes
  ThemeData theme() {
      return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: AppBarTextStyle
          )
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle
        )
      );
  }
}