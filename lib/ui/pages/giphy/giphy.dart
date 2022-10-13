import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/use_case_config.dart';
import '../../../domain/models/giphy/giphy_images.dart';
import '../../../domain/models/page.dart';
import '../../common/atoms/icon_button.dart';
import '../../common/molescules/card.dart';
import '../../common/organisms/header.dart';
import '../../common/organisms/nav_bar.dart';
import '../../common/tokens/colors.dart';

class GiphyPage extends ConsumerWidget {
  static const String routeName = '/giphy';

  GiphyPage({Key? key}) : super(key: key);

  final UseCaseConfig _config = UseCaseConfig();

  // Determina la página del navBar en la que se encuentra el usuario
  final StateProvider<int> selectedNavBarProvider =
      StateProvider<int>((_) => 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int selectedNavBar = ref.watch(selectedNavBarProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            GiphyHeader(title: _options[selectedNavBar].title),
            _buildContent(context),
          ],
        ),
      ),
      bottomNavigationBar: GiphyNavBar(
        selectedNavBar: selectedNavBar,
        options: _options,
        onChange: (int index) => _onNavBarChange(ref, index),
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
          return _buildImages(context, results: snapshot.data!);
        } else if (snapshot.hasError) {
          return _buildApiError(context);
        } else {
          return _buildApiLoading();
        }
      },
    );
  }

  Widget _buildImages(
    BuildContext context, {
    required List<GiphyImagesModel> results,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: <Widget>[
              Text(
                'Happy Hours',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              IconButtonWidget(icon: Icons.delete_outline, onPressed: () {}),
            ],
          ),
        ),
        Column(
          children: List<CardWidget>.generate(
            results.length,
            (int index) => CardWidget(image: results[index].images!.original!),
          ),
        ),
      ],
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

  Widget _buildApiLoading() {
    return Align(
      child: Container(
        margin: const EdgeInsets.all(40),
        width: 40,
        height: 40,
        child: const CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: ColorsTokens.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(child: _buildBuilderPopular(context)),
      ),
    );
  }

  static final List<PageModel> _options = <PageModel>[
    PageModel(
      title: 'Inicio',
      icon: Icons.home_filled,
      body: const SizedBox.shrink(),
    ),
    PageModel(
      title: 'Calendario',
      icon: Icons.calendar_month,
      body: const SizedBox.shrink(),
    ),
    PageModel(
      title: 'Search',
      icon: Icons.search,
      body: const SizedBox.shrink(),
    ),
    PageModel(
      title: 'Favoritos',
      icon: Icons.favorite_border,
      body: const SizedBox.shrink(),
    ),
  ];

  void _onNavBarChange(WidgetRef ref, int index) {
    ref.read(selectedNavBarProvider.state).state = index;
  }
}
