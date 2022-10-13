import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/helpers/matrix_helper.dart';
import '../../common/tokens/colors.dart';
import '../../common/tokens/sizes.dart';

class IslandsPage extends ConsumerWidget {
  static const String routeName = '/islands';

  const IslandsPage({Key? key}) : super(key: key);

  static final StateProvider<List<List<int>>> _matrix =
      StateProvider<List<List<int>>>((_) => <List<int>>[]);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: SizesTokens.spacing),
          children: <Widget>[
            _buildField(ref),
            const SizedBox(height: SizesTokens.spacing),
            _buildGrid(context, ref),
            const SizedBox(height: SizesTokens.spacing),
            _buildInfoIslands(context, ref),
          ],
        ),
      ),
    );
  }

  Widget _buildField(WidgetRef ref) {
    return TextField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Longitud de la matriz',
        counterText: '',
        helperText: 'Solo se acepta un número de 0 a 9',
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      onChanged: (String value) {
        final int intValue = int.parse(value != '' ? value : '0');
        final List<List<int>> matrix = List<List<int>>.generate(intValue, (_) {
          return List<int>.generate(intValue, (_) {
            final Random random = Random();
            return random.nextInt(2);
          });
        });

        ref.read(_matrix.state).state = matrix;
      },
      maxLength: 1,
    );
  }

  Widget _buildGrid(BuildContext context, WidgetRef ref) {
    final List<List<int>> matrix = ref.watch(_matrix);
    final int matrixLength = matrix.length;

    if (matrix.isEmpty) {
      return const SizedBox.shrink();
    }

    return AspectRatio(
      aspectRatio: 1,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: matrixLength,
        ),
        itemBuilder: (_, int index) {
          final int x = (index / matrixLength).floor();
          final int y = index % matrixLength;

          return GestureDetector(
            onTap: () {
              matrix[x][y] = matrix[x][y] == 1 ? 0 : 1;
              ref.read(_matrix.state).state = <List<int>>[];
              ref.read(_matrix.state).state = matrix;
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorsTokens.gray, width: .5),
                color: (matrix[x][y] == 1) ? Colors.green : Colors.blue,
              ),
              child: Center(
                child: Text(
                  matrix[x][y].toString(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          );
        },
        itemCount: matrixLength * matrixLength,
      ),
    );
  }

  Widget _buildInfoIslands(BuildContext context, WidgetRef ref) {
    final List<List<int>> matrix = ref.watch(_matrix);

    if (matrix.isEmpty) {
      return const SizedBox.shrink();
    }

    // Utiliza el helper del script para calcular las islas
    final int quantityIslands = MatrixHelper.getIslands(matrix);

    return Text(
      'Hay $quantityIslands islas',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline4!.copyWith(
            fontWeight: FontWeight.w300,
          ),
    );
  }
}
