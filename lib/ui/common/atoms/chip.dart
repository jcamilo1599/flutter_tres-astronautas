import 'package:flutter/material.dart';

import '../tokens/colors.dart';

class ChipWidget extends StatelessWidget {
  final String label;
  final bool active;

  const ChipWidget({
    required this.label,
    this.active = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Chip(
        elevation: 4,
        shadowColor: ColorsTokens.lightGrey,
        backgroundColor: active ? ColorsTokens.primary : ColorsTokens.white,
        labelPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        label: Text(
          label,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.w500,
                color: active ? ColorsTokens.white : ColorsTokens.black,
              ),
        ),
      ),
    );
  }
}
