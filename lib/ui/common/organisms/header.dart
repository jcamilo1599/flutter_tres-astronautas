import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../atoms/chip.dart';
import '../atoms/icon_button.dart';
import '../tokens/colors.dart';
import '../tokens/sizes.dart';

class GiphyHeader extends ConsumerWidget {
  final String title;

  const GiphyHeader({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader(),
        const SizedBox(height: SizesTokens.spacing),
        _buildTitle(context),
        _buildChips(),
      ],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizesTokens.spacing),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: ColorsTokens.blue,
          ),
          const Spacer(),
          Row(
            children: <Widget>[
              IconButtonWidget(
                icon: Icons.notifications_none,
                onPressed: () {},
              ),
              IconButtonWidget(icon: Icons.settings, onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizesTokens.spacing),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                color: ColorsTokens.black, fontWeight: FontWeight.w900),
          ),
          const Spacer(),
          IconButtonWidget(icon: Icons.add, onPressed: () {}),
        ],
      ),
    );
  }

  Widget _buildChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          SizedBox(width: SizesTokens.spacing),
          ChipWidget(label: 'All'),
          SizedBox(width: 10),
          ChipWidget(label: 'Happy Hours', active: true),
          SizedBox(width: 10),
          ChipWidget(label: 'Drinks'),
          SizedBox(width: 10),
          ChipWidget(label: 'Beer'),
          SizedBox(width: 10),
          ChipWidget(label: 'Games'),
          SizedBox(width: SizesTokens.spacing),
        ],
      ),
    );
  }
}
