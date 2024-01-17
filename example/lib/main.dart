import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  MaterialApp getApp(BuildContext context) {
    return MaterialApp(
      theme: kThemeData,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: Builder(builder: (context) {
        return Scaffold(
          body: const Center(
            child: Text('Hello World!'),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            AtoaSdk.show(context);
          }),
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
                    return getApp(context);
                  },
                ),
              );
            }
            return getApp(context);
          },
        ),
      );
}
