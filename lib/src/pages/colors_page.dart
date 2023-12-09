import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../providers/providers.dart';
import '../shared/center_text.dart';
import '../shared/color_card.dart';

class ColorsPage extends ConsumerStatefulWidget {
  static const routeName = '/colors';

  const ColorsPage({super.key, required this.totalPages});

  final int totalPages;

  @override
  ConsumerState<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends ConsumerState<ColorsPage> {
  final int _page = 1;

  @override
  Widget build(BuildContext context) {
    final colors = ref.watch(ColorsProvider(page: _page));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: colors.when(
        data: (data) => ListView.separated(
          itemBuilder: (context, index) {
            final color = int.parse('0xff${data[index].color.substring(1)}');

            return ColorCard(
              color: Color(color),
              title: data[index].name,
              index: index,
            );
          },
          separatorBuilder: (_, __) => kBoxSeparator,
          itemCount: data.length,
        ),
        error: (_, __) => const CenterText(text: 'Failed to load'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

// As we utilize [onGenerateRoute], it becomes necessary to create a class for
// passing variables between pages.
class ColorsArgs {
  const ColorsArgs({required this.totalPages});

  final int totalPages;
}
