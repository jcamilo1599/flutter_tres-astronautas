import 'package:flutter/material.dart';

import '../tokens/colors.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color iconColor;

  const IconButtonWidget({
    required this.icon,
    required this.onPressed,
    this.iconColor = ColorsTokens.black,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(9),
        backgroundColor: ColorsTokens.white,
        elevation: 3,
        shadowColor: ColorsTokens.lightGrey.withOpacity(.5),
        surfaceTintColor: ColorsTokens.white,
        minimumSize: Size.zero,
      ),
      child: Icon(icon, color: iconColor),
    );
  }
}
