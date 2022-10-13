import 'package:flutter/material.dart';
import 'package:tres_astronautas/ui/pages/giphy/giphy.dart';
import 'package:tres_astronautas/ui/pages/islands/islands.dart';

import '../../../config/use_case_config.dart';

class StartPage extends StatelessWidget {
  static const String routeName = '/';

  StartPage({Key? key}) : super(key: key);

  final UseCaseConfig _useCase = UseCaseConfig();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => _useCase.startUseCase.navigateTo(
                context,
                IslandsPage.routeName,
              ),
              child: const Text('Página de Islas'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => _useCase.startUseCase.navigateTo(
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
