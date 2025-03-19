import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  Widget getApp() {
    return MaterialApp(
      theme: kThemeData.copyWith(
        textTheme: TextTheme(
          displayLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 48.sp,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 36.sp,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: TextStyle(
            letterSpacing: 0,
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
          ),
          headlineLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(
            letterSpacing: 0,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
          titleSmall: TextStyle(
            letterSpacing: 0,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          labelLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
          labelMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
          labelSmall: TextStyle(
            letterSpacing: 0,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            letterSpacing: 0,
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
          ),
        ).apply(
          bodyColor: RegalColors.licoriceBlack,
          displayColor: RegalColors.licoriceBlack,
          fontFamily: 'Inter',
          package: 'regal',
        ),
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: RegalColors.snowWhite,
          centerTitle: true,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: RegalColors.claretRed,
          ),
          titleTextStyle: TextStyle(
            color: RegalColors.licoriceBlack,
            fontFamily: 'Montserrat',
            package: 'regal',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
          surfaceTintColor: RegalColors.snowWhite,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: const StadiumBorder(),
            foregroundColor: RegalColors.snowWhite,
            backgroundColor: RegalColors.vividRed,
            disabledBackgroundColor: RegalColors.disabledVividRed,
            disabledForegroundColor: Colors.white,
            fixedSize: Size.fromHeight(60.sp),
            textStyle: TextStyle(
              fontFamily: 'Montserrat',
              package: 'regal',
              color: RegalColors.snowWhite,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          contentPadding: Spacing.large.all,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: BorderSide(color: RegalColors.grey.shade10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: BorderSide(color: RegalColors.grey.shade10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: const BorderSide(color: RegalColors.licoriceBlack),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: BorderSide(color: RegalColors.grey.shade10),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: const BorderSide(
              color: RegalColors.darkOrange,
            ),
          ),
          errorMaxLines: 2,
          hintStyle: TextStyle(
            letterSpacing: 0,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ).copyWith(
            color: RegalColors.grey.shade40,
            height: 1.3,
          ),
          errorStyle: TextStyle(
            letterSpacing: 0,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ).copyWith(
            color: RegalColors.darkOrange,
          ),
          isCollapsed: true,
          labelStyle: TextStyle(
            letterSpacing: 0,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ).copyWith(color: RegalColors.licoriceBlack),
          floatingLabelStyle: TextStyle(
            letterSpacing: 0,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ).copyWith(color: RegalColors.licoriceBlack),
        ),
      ),
      darkTheme: kDarkThemeData.copyWith(
        textTheme: TextTheme(
          displayLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 48.sp,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 36.sp,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: TextStyle(
            letterSpacing: 0,
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
          ),
          headlineLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(
            letterSpacing: 0,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
          titleSmall: TextStyle(
            letterSpacing: 0,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          labelLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
          labelMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
          labelSmall: TextStyle(
            letterSpacing: 0,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: TextStyle(
            letterSpacing: 0,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            letterSpacing: 0,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            letterSpacing: 0,
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
          ),
        ).apply(
          bodyColor: RegalColors.snowWhite,
          displayColor: RegalColors.snowWhite,
          fontFamily: 'Inter',
          package: 'regal',
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: RegalColors.vividRed,
            disabledBackgroundColor: RegalColors.disabledDarkVividRed,
            foregroundColor: RegalColors.snowWhite,
            textStyle: TextStyle(
              fontFamily: 'Montserrat',
              package: 'regal',
              color: RegalColors.snowWhite,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ).copyWith(
            elevation: const WidgetStatePropertyAll(0),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: RegalColors.licoriceBlack,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          actionsIconTheme: const IconThemeData(
            color: RegalColors.snowWhite,
          ),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Montserrat',
            package: 'regal',
            color: RegalColors.snowWhite,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
          surfaceTintColor: RegalColors.licoriceBlack,
        ),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          contentPadding: Spacing.large.all,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: BorderSide(color: RegalColors.darkGrey.shade10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: BorderSide(color: RegalColors.darkGrey.shade10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: const BorderSide(color: RegalColors.snowWhite),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: BorderSide(color: RegalColors.darkGrey.shade10),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.sp),
            borderSide: const BorderSide(
              color: RegalColors.darkOrange,
            ),
          ),
          errorMaxLines: 2,
          hintStyle: TextStyle(
            letterSpacing: 0,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ).copyWith(
            color: RegalColors.darkGrey.shade40,
            height: 1.3,
          ),
          errorStyle: TextStyle(
            letterSpacing: 0,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ).copyWith(
            color: RegalColors.darkOrange,
          ),
          isCollapsed: true,
          labelStyle: TextStyle(
            letterSpacing: 0,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ).copyWith(
            color: RegalColors.grey.shade40,
          ),
          floatingLabelStyle: TextStyle(
            letterSpacing: 0,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ).copyWith(color: RegalColors.snowWhite),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(),
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
