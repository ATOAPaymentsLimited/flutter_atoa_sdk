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
  final textController = TextEditingController();
  MaterialApp getApp(BuildContext context) {
    return MaterialApp(
      theme: kThemeData,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: Padding(
              padding: Spacing.medium.x,
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(hintText: 'Payment ID'),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: ActionButton(
            controller: textController,
          ),
        ),
      ),
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

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  void _showSheet(BuildContext context) {
    AtoaSdk.show(
      context,
      paymentId: controller.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: controller,
        child: Text(
          'Initiate Payment',
          style: context.montserrat.headlineSmall.copyWith(
            color: RegalColors.snowWhite,
          ),
        ),
        builder: (context, value, child) {
          return ElevatedButton(
            onPressed:
                value.text.trim().isEmpty ? null : () => _showSheet(context),
            child: child!,
          );
        },
      );
}
