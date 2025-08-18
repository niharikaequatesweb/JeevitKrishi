import 'l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'presentation/settings_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'presentation/language_screen/screens/language_selection_screen.dart';
import 'presentation/splash_screen/splash_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  String? localeCode = prefs.getString('localeCode');
  runApp(MyApp(localeCode: localeCode));
}

class MyApp extends StatefulWidget {
  final String? localeCode;
  const MyApp({super.key, this.localeCode});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  bool _isLanguageSelected = false;

  @override
  void initState() {
    super.initState();
    if (widget.localeCode != null) {
      _locale = Locale(widget.localeCode!);
      _isLanguageSelected = true;
    }
  }

  void setLocale(Locale locale) async {
    setState(() {
      _locale = locale;
      _isLanguageSelected = true;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('localeCode', locale.languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: _locale,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          theme: ThemeData(
            primarySwatch: Colors.green,
            scaffoldBackgroundColor: Colors.green[50],
          ),
          home: _isLanguageSelected
              ? SplashScreen()
              : LanguageSelectionScreen(onLocaleSelected: setLocale),
          routes: {
            '/settings': (context) =>
                SettingsScreen(onLocaleChanged: setLocale),
          },
        );
      },
    );
  }
}
