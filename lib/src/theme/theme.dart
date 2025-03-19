import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart';

ThemeData ledgerTheme(BuildContext context) => kThemeData.copyWith(
      bottomSheetTheme: kThemeData.bottomSheetTheme.copyWith(
        surfaceTintColor: context.intactColors.white,
        backgroundColor: context.intactColors.white,
      ),
      textTheme: kFigTreeTextTheme.apply(
        displayColor: context.intactColors.black,
        bodyColor: context.intactColors.black,
        package: 'atoa_flutter_sdk',
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          textStyle: TextStyle(
            fontFamily: 'FigTree',
            package: 'regal',
            color: context.intactColors.white,
            fontSize: 14.sp,
            fontVariations: const [
              FontVariation.weight(700),
            ],
          ),
        ),
      ),
    );
