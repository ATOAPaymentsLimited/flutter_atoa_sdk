
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttersdk/home_page.dart';
import 'package:regal/regal.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  SharedPreferences? _prefs;

  Widget getApp() {
    return const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(),
    );
  }

  @override
  void initState() {
    super.initState();
    _initializeSharedPreferences();
  }

  Future<void> _initializeSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    final showHowPaymentWorks = _prefs?.getBool('showHowPaymentWorks');
    if (showHowPaymentWorks == null) {
      await _prefs?.setBool('showHowPaymentWorks', true);
    }
  }

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: FutureBuilder<SharedPreferences>(
          future: SharedPreferences.getInstance(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Builder(
                builder: (context) => RegalThemeProvider(
                  prefs: snapshot.data!,
                  builder: (context, themeMode, child) => Builder(
                    builder: (context) => getApp(),
                  ),
                ),
              );
            }
            return Builder(
              builder: (context) => getApp(),
            );
          },
        ),
      );
}
