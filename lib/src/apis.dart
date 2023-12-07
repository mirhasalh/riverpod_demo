import 'dart:convert';

import 'package:http/http.dart' as http;

import 'constants.dart';
import '../src/models/models.dart';

enum PageType { user, color }

Future<void> getTotalPages({
  required PageType type,
  required Function(int) onTotalPages,
  required Function(int) onError,
}) async {
  try {
    late String path;
    if (type == PageType.user) {
      path = '/api/users';
    } else {
      path = '/api/unknown';
    }
    final url = Uri.parse('$kReqResBaseUrl$path');
    final res = await http.get(url);

    if (res.statusCode == 200) {
      final data = json.decode(res.body);

      onTotalPages(data['total_pages']);
    } else {
      onError(res.statusCode);
    }
  } catch (e) {
    throw Exception(e);
  }
}

Future<List<User>> getUsers({required int page}) async {
  try {
    final url = Uri.parse('$kReqResBaseUrl/api/users?page=$page');
    final res = await http.get(url);

    final data = json.decode(res.body);

    return (data['data'] as List).map((e) => User.fromJson(e)).toList();
  } catch (e) {
    throw Exception(e);
  }
}

Future<List<ColorSource>> getColors({required int page}) async {
  try {
    final url = Uri.parse('$kReqResBaseUrl/api/unknown?page=$page');
    final res = await http.get(url);

    final data = json.decode(res.body);

    return (data['data'] as List).map((e) => ColorSource.fromJson(e)).toList();
  } catch (e) {
    throw Exception(e);
  }
}
