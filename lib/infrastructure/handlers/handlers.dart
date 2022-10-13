import 'package:flutter/material.dart';

import '../../ui/pages/giphy/giphy.dart';
import '../../ui/pages/islands/islands.dart';
import '../../ui/pages/start/start.dart';

class Handlers {
  // Obtiene las rutas de la aplicación
  static Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return <String, WidgetBuilder>{
      StartPage.routeName: (BuildContext context) => StartPage(),
      IslandsPage.routeName: (BuildContext context) => IslandsPage(),
      GiphyPage.routeName: (BuildContext context) => GiphyPage(),
    };
  }

  // Ruta inicial
  static String getInitialRoute() => '/';
}
