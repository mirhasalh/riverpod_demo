import '../common.dart';
import '../shared/tiny_circular_progress_indicator.dart';
import '../apis.dart' show PageType, getTotalPages;
import 'colors_page.dart' show ColorsArgs;
import 'users_page.dart' show UsersArgs;

class HomePage extends StatefulWidget {
  static const routeName = '/';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _tappedPageType = PageType.color;
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    // Start by declaring your [AppLocalizations.of(context)!] at the beginning
    // of your code. Use clear names like [l10n], [locale], or [t] to represent
    // them. This simplifies the process when you work with translations in the
    // [build] method.
    final l10n = AppLocalizations.of(context)!;

    // Same with the [Navigator]
    final nav = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.homeTitle),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            OutlinedButton(
              onPressed: _loading
                  ? null
                  : () async {
                      setState(() {
                        _tappedPageType = PageType.color;
                        _loading = true;
                      });

                      await getTotalPages(
                        type: PageType.color,
                        onTotalPages: (v) {
                          setState(() => _loading = false);
                          final args = ColorsArgs(totalPages: v);
                          nav.pushNamed('/colors', arguments: args);
                        },
                        onError: (_) => setState(() => _loading = false),
                      );
                    },
              child: _tappedPageType == PageType.color && _loading
                  ? const TinyCircularProgressIndicator()
                  : const Text('To colors page'),
            ),
            OutlinedButton(
              onPressed: _loading
                  ? null
                  : () async {
                      setState(() {
                        _tappedPageType = PageType.user;
                        _loading = true;
                      });

                      await getTotalPages(
                        type: PageType.user,
                        onTotalPages: (v) {
                          setState(() => _loading = false);
                          final args = UsersArgs(totalPages: v);
                          nav.pushNamed('/users', arguments: args);
                        },
                        onError: (_) => setState(() => _loading = false),
                      );
                    },
              child: _tappedPageType == PageType.user && _loading
                  ? const TinyCircularProgressIndicator()
                  : const Text('To users page'),
            ),
          ],
        ),
      ),
    );
  }
}
