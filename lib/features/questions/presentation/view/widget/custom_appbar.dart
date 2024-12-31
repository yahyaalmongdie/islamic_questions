import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/core/utils/app_assets.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.categoryName,
    required this.typeTitle,
  });

  final String categoryName, typeTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: AppColors.goldColor,
                ),
              ),
              Text(
                "أسئلة عن ${categoryName}",
                style: AppTextStyles.regular22(context: context),
              ),
              const SizedBox(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Assets.imagesRightButtomAppBar,
                fit: BoxFit.scaleDown,
              ),
              Text(
               typeTitle,
                style: AppTextStyles.regular22(context: context),
              ),
              Image.asset(
                Assets.imagesLeftButtomAppBar,
                fit: BoxFit.scaleDown,
              ),
            ],
          )
        ],
      ),
    );
  }
}
