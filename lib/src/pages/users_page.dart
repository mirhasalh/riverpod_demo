import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/providers.dart' show usersProvider;
import '../shared/center_text.dart';

class UsersPage extends ConsumerStatefulWidget {
  static const routeName = '/users';

  const UsersPage({super.key, required this.totalPages});

  final int totalPages;

  @override
  ConsumerState<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends ConsumerState<UsersPage> {
  final int _page = 1;
  @override
  Widget build(BuildContext context) {
    var users = ref.watch(usersProvider(page: _page));
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: users.when(
        data:
            (data) => ListView.separated(
              itemBuilder: (context, index) {
                final name = '${data[index].firstName} ${data[index].lastName}';
                final url = data[index].avatar;

                return ListTile(
                  onTap: () {},
                  leading: CircleAvatar(backgroundImage: NetworkImage(url)),
                  title: Text(name),
                  subtitle: Text(data[index].email),
                );
              },
              separatorBuilder: (_, __) => const Divider(height: 0.0),
              itemCount: data.length,
            ),
        error: (_, __) => const CenterText(text: 'Failed to load'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class UsersArgs {
  const UsersArgs({required this.totalPages});

  final int totalPages;
}
