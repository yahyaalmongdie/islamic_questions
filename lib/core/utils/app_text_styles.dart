import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/font_size_config.dart';

abstract class AppTextStyles {
  static TextStyle bold13({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
    );
  }

  static TextStyle bold23({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: const Color(0xff0c0d0d),
      fontSize: getResponsiveFontSize(context, fontSize: 23),
    );
  }

  static TextStyle semiBold13({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
    );
  }

  static TextStyle regular13({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
    );
  }

  static TextStyle bold16({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
    );
  }

  static TextStyle bold19({required BuildContext context}) {
    return TextStyle(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(context, fontSize: 19),
    );
  }

  static TextStyle semiBold16({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
    );
  }

  static TextStyle bold28({required BuildContext context}) {
    return TextStyle(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(context, fontSize: 28),
    );
  }

  static TextStyle regular22({required BuildContext context}) {
    return TextStyle(
      color: AppColors.goldColor,
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle semiBold11({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context, fontSize: 11),
    );
  }

  static TextStyle medium15({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context, fontSize: 15),
    );
  }

  static TextStyle regular26({required BuildContext context}) {
    return TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.normal,
      fontSize: getResponsiveFontSize(context, fontSize: 26),
    );
  }

  static TextStyle regular16({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      height: 1,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
    );
  }

  static TextStyle regular11({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: getResponsiveFontSize(context, fontSize: 11),
    );
  }
}
