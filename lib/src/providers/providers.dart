import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/models.dart';
import '../apis.dart';

part 'providers.g.dart';

@riverpod
Future<List<ColorSource>> colors(ColorsRef ref, {required int page}) async {
  final colors = await getColors(page: page);
  return colors;
}

@riverpod
Future<List<User>> users(UsersRef ref, {required int page}) async {
  final users = await getUsers(page: page);
  return users;
}
