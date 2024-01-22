import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  MaterialApp getApp(BuildContext context, bool hasTheme) {
    return MaterialApp(
      theme: kThemeData,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: Builder(builder: (context) {
        return Scaffold(
          body: const Center(
            child: Text('Hello World!'),
          ),
          floatingActionButton: hasTheme ? const ActionButton() : null,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: FutureBuilder<SharedPreferences>(
          future: SharedPreferences.getInstance(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return RegalThemeProvider(
                prefs: snapshot.data!,
                builder: (context, themeMode, child) => Builder(
                  builder: (context) {
                    return getApp(context, true);
                  },
                ),
              );
            }
            return getApp(context, false);
          },
        ),
      );
}

class ActionButton extends StatefulWidget {
  const ActionButton({Key? key}) : super(key: key);

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<void>.delayed(
        const Duration(seconds: 1),
        () => _showSheet(context),
      );
    });
  }

  void _showSheet(BuildContext context) {
    AtoaSdk.show(
      context,
      paymentId: 'f7f76918-8b9c-43ef-be4e-526a30ca0851',
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () => _showSheet(context));
  }
}
