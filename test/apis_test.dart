import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_demo/src/apis.dart';

void main() {
  group('ReqRes APIs', () {
    test('Get total page test', () async {
      late int total;

      await getTotalPages(
        type: PageType.user,
        onTotalPages: (v) => total = v,
        onError: (_) {},
      );

      expect(total, 2);
    });

    test('Get users', () async {
      var users = await getUsers(page: 1);

      var firstUserFirstName = users.first.firstName;

      expect(firstUserFirstName, 'George');
    });

    test('Get colors', () async {
      var colors = await getColors(page: 1);

      expect(colors.first.name, 'cerulean');
    });
  });
}
