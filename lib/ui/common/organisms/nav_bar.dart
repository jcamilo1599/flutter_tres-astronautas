import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/models/page.dart';
import '../tokens/colors.dart';

class GiphyNavBar extends ConsumerWidget {
  final int selectedNavBar;
  final List<PageModel> options;
  final ValueChanged<int>? onChange;

  const GiphyNavBar({
    required this.selectedNavBar,
    required this.options,
    required this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: ColorsTokens.gray.withOpacity(.2), width: .5),
        ),
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        items: options.map((PageModel option) {
          final int index = options.indexOf(option);

          return BottomNavigationBarItem(
            label: '',
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  option.icon,
                  color: (index == selectedNavBar)
                      ? ColorsTokens.black
                      : ColorsTokens.gray,
                ),
                const SizedBox(width: 10),
                _buildText(
                  context,
                  index: index,
                  text: option.title,
                ),
              ],
            ),
          );
        }).toList(),
        currentIndex: selectedNavBar,
        selectedItemColor: Colors.amber[800],
        onTap: onChange,
      ),
    );
  }

  Widget _buildText(
    BuildContext context, {
    required int index,
    required String text,
  }) {
    if (index != selectedNavBar) {
      return const SizedBox.shrink();
    }

    return Flexible(
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
