import 'package:flutter/material.dart';

import '../../../domain/models/giphy/giphy_image_original.dart';
import '../atoms/icon_button.dart';
import '../atoms/image_network.dart';
import '../tokens/colors.dart';
import '../tokens/sizes.dart';

class CardWidget extends StatelessWidget {
  final GiphyImageOriginalModel image;

  const CardWidget({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: SizesTokens.spacing,
        horizontal: 30,
      ),
      padding: const EdgeInsets.all(SizesTokens.spacing),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: ColorsTokens.gray.withOpacity(.3), width: .5),
        color: ColorsTokens.lightGrey,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: ColorsTokens.gray.withOpacity(.2),
            blurRadius: 3,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                width: 120,
                height: 112,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Container(
                      width: 120,
                      height: 90,
                      child: ImageNetworkWidget(path: image.url!),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: IconButtonWidget(
                  icon: Icons.favorite,
                  iconColor: ColorsTokens.primary,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Text(
              'Título de la imagen',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          const Icon(Icons.more_horiz, color: ColorsTokens.gray)
        ],
      ),
    );
  }
}
