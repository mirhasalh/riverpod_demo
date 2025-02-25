import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/src/providers/theme_provider.dart';

import '../common.dart';
import '../shared/tiny_circular_progress_indicator.dart';
import '../apis.dart' show PageType, getTotalPages;
import 'colors_page.dart' show ColorsArgs;
import 'language_settings_page.dart' show LanguageArgs;
import 'users_page.dart' show UsersArgs;

class HomePage extends ConsumerStatefulWidget {
  static const routeName = '/';

  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
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
    final themeMode = ref.watch(themeProvider).themeMode;
    final locale = '${Localizations.localeOf(context)}';
    final b = Theme.of(context).brightness.name;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.homeTitle)),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                onTap:
                    () => nav.pushNamed(
                      '/language-settings',
                      arguments: LanguageArgs(langCode: locale),
                    ),
                style: ListTileStyle.drawer,
                leading: const Icon(Icons.language),
                title: Text(l10n.languageSettings),
                subtitle: Text(locale.toUpperCase()),
              ),
              const Divider(height: 0.0),
              const Spacer(),
              const Divider(height: 0.0),
              ListTile(
                onTap: () => _themeSettings(),
                style: ListTileStyle.drawer,
                leading: Icon(b == 'dark' ? Icons.dark_mode : Icons.light_mode),
                title: const Text('Select your preffered theme'),
                subtitle: Text(switch (themeMode) {
                  ThemeMode.dark => 'Dark',
                  ThemeMode.light => 'Light',
                  ThemeMode.system => 'System',
                }),
              ),
            ],
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            OutlinedButton(
              onPressed:
                  _loading
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
              child:
                  _tappedPageType == PageType.color && _loading
                      ? const TinyCircularProgressIndicator()
                      : const Text('To colors page'),
            ),
            OutlinedButton(
              onPressed:
                  _loading
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
              child:
                  _tappedPageType == PageType.user && _loading
                      ? const TinyCircularProgressIndicator()
                      : const Text('To users page'),
            ),
          ],
        ),
      ),
    );
  }

  void _themeSettings() {
    final themeMode = ref.watch(themeProvider).themeMode;
    final nav = Navigator.of(context);

    showModalBottomSheet(
      context: context,
      builder:
          (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const _DragHandler(),
              ...ThemeMode.values.map(
                (v) => RadioListTile(
                  value: v,
                  groupValue: themeMode,
                  onChanged: (v) {
                    ref.read(themeProvider).setThemeMode(v!);
                    nav.pop();
                  },
                  title: Text(
                    '${v.name[0].toUpperCase()}${v.name.substring(1)}',
                  ),
                ),
              ),
            ],
          ),
    );
  }
}

class _DragHandler extends StatelessWidget {
  const _DragHandler();

  @override
  Widget build(BuildContext context) {
    final disabledColor = Theme.of(context).disabledColor;

    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 4.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: disabledColor,
              borderRadius: BorderRadius.circular(9.0),
            ),
          ),
        ],
      ),
    );
  }
}
