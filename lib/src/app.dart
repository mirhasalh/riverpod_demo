import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common.dart';
import 'providers/locale_provider.dart';
import 'providers/theme_provider.dart';
import 'route.dart';
import 'themes.dart';

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider).locale;
    final themeMode = ref.watch(themeProvider).themeMode;

    return MaterialApp(
      title: 'Flutter Riverpod Demo',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      locale: locale,
      onGenerateTitle: (context) => AppLocalizations.of(context)!.homeTitle,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: onGenerateRoute,
      initialRoute: '/',
    );
  }
}
