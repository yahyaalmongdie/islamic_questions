import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_assets.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/options_list_item.dart';

class OptionsList extends StatelessWidget {
  const OptionsList({
    super.key,
    required this.options,
  });

  final List options;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.goldColor,
          image: const DecorationImage(
              fit: BoxFit.fill,
              colorFilter:
                  const ColorFilter.mode(AppColors.blackColor, BlendMode.dstIn),
              image: const AssetImage(
                Assets.imagesMosque,
              ))),
      child: OptionsListItem(options: options),
    );
  }
}
