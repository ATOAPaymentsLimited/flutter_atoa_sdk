import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
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

  final _envNotifier = ValueNotifier(AtoaEnv.sandbox);

  AtoaEnv get env => _envNotifier.value;

  set env(AtoaEnv value) => _envNotifier.value = value;

  MaterialApp getApp(BuildContext context) {
    return MaterialApp(
      theme: kThemeData,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: Spacing.medium.x,
                  child: TextField(
                    controller: textController,
                    decoration: const InputDecoration(hintText: 'Payment ID'),
                  ),
                ),
                Spacing.medium.yBox,
                Padding(
                  padding: Spacing.medium.x,
                  child: ValueListenableBuilder(
                    valueListenable: _envNotifier,
                    builder: (_, value, Widget? child) => SwitchListTile(
                      title: const Text('is Sandbox?'),
                      value: env == AtoaEnv.sandbox,
                      onChanged: (v) {
                        env = v ? AtoaEnv.sandbox : AtoaEnv.prod;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: ValueListenableBuilder(
            valueListenable: _envNotifier,
            builder: (_, value, Widget? child) => ActionButton(
              controller: textController,
              env: value,
            ),
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
                  builder: (context) => getApp(context),
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
    required this.env,
  });

  final TextEditingController controller;
  final AtoaEnv env;

  void _showSheet(BuildContext context) {
    AtoaSdk.show(
      context,
      paymentId: controller.text.trim(),
      showHowPaymentWorks: false,
      env: env,
    );
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: controller,
        child: Text(
          'Initiate Payment',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: IntactColors.light().white,
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
