import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common.dart';
import '../providers/locale_provider.dart' show localeProvider;

enum TranslatedLanguage { en, id }

class LanguageSettingsPage extends ConsumerStatefulWidget {
  static const routeName = '/language-settings';

  const LanguageSettingsPage({super.key, required this.langCode});

  final String langCode;

  @override
  ConsumerState<LanguageSettingsPage> createState() =>
      _LanguageSettingsPageState();
}

class _LanguageSettingsPageState extends ConsumerState<LanguageSettingsPage> {
  late TranslatedLanguage _selectedLanguage;

  @override
  void initState() {
    super.initState();

    _selectedLanguage = _getSelectedLanguage(widget.langCode);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.languageSettings)),
      body: ListView.separated(
        itemBuilder: (context, index) {
          var language = TranslatedLanguage.values[index];
          var locale = _getLocale(language);

          return RadioListTile(
            value: language,
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() => _selectedLanguage = value!);
              ref.read(localeProvider).setLocale(locale);
            },
            title: Text(_getLanguageName(language)),
          );
        },
        separatorBuilder: (_, __) => const Divider(height: 0.0),
        itemCount: TranslatedLanguage.values.length,
      ),
    );
  }

  String _getLanguageName(TranslatedLanguage language) {
    final l10n = AppLocalizations.of(context)!;
    switch (language) {
      case TranslatedLanguage.id:
        return l10n.indonesian;
      default:
        return l10n.english;
    }
  }

  TranslatedLanguage _getSelectedLanguage(String langCode) {
    switch (langCode) {
      case 'en':
        return TranslatedLanguage.en;
      case 'id':
        return TranslatedLanguage.id;
      default:
        return TranslatedLanguage.en;
    }
  }

  Locale _getLocale(TranslatedLanguage language) {
    switch (language) {
      case TranslatedLanguage.id:
        return const Locale('id');
      default:
        return const Locale('en');
    }
  }
}

class LanguageArgs {
  const LanguageArgs({required this.langCode});

  final String langCode;
}
