import 'package:flutter/material.dart';

import '../../../config/use_case_config.dart';
import '../giphy/giphy.dart';
import '../islands/islands.dart';

class StartPage extends StatelessWidget {
  static const String routeName = '/';

  StartPage({Key? key}) : super(key: key);

  final UseCaseConfig _config = UseCaseConfig();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () => _config.startUseCase.navigateTo(
                context,
                IslandsPage.routeName,
              ),
              child: const Text('Página de Islas'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => _config.startUseCase.navigateTo(
                context,
                GiphyPage.routeName,
              ),
              child: const Text('Página de Giphy API'),
            ),
          ),
        ],
      ),
    );
  }
}
