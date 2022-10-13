import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/use_case_config.dart';
import '../../../domain/models/giphy/giphy_images.dart';
import '../../common/tokens/sizes.dart';

class GiphyPage extends ConsumerWidget {
  static const String routeName = '/giphy';

  GiphyPage({Key? key}) : super(key: key);

  final UseCaseConfig _config = UseCaseConfig();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: SizesTokens.spacing),
          children: <Widget>[
            _buildBuilderPopular(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBuilderPopular(BuildContext context) {
    return FutureBuilder<List<GiphyImagesModel>>(
      future: _config.giphyUseCase.getRandom(),
      builder: (_, AsyncSnapshot<List<GiphyImagesModel>> snapshot) {
        // Determina si hay datos y la respuesta fue correcta
        final bool hasData = snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done;

        if (hasData) {
          return const Text('Todo salió bien');
        } else if (snapshot.hasError) {
          return _buildApiError(context);
        } else {
          return _buildLoading();
        }
      },
    );
  }

  Widget _buildApiError(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Text(
        'Se produjo un error, no se pudieron cargar imágenes',
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildLoading() {
    return Align(
      child: Container(
        margin: const EdgeInsets.all(40),
        width: 40,
        height: 40,
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
