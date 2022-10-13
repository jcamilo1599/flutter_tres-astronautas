import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'infrastructure/handlers/handlers.dart';
import 'resources/hide_focus.dart';
import 'resources/themes.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => hideFocus(context),
      child: MaterialApp(
        title: 'TresAstronautas',
        debugShowCheckedModeBanner: false,
        routes: Handlers.getRoutes(context),
        initialRoute: Handlers.getInitialRoute(),
        theme: Themes.light,
      ),
    );
  }
}
