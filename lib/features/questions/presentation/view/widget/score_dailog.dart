import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';

scoreDailog({
  required BuildContext context,
  required String image,
  required int score,
  required Function() onPressShowAnswers,
}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          insetPadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Column(
            children: [
              Image.asset(image),
              const SizedBox(
                height: 20,
              ),
              Text(
                "حصلت على ${score} من 10",
                style: AppTextStyles.semiBold13(context: context),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          titlePadding:
              const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
          buttonPadding:
              const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
          backgroundColor: AppColors.goldColor,
          actionsPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 22,
          ),
          actions: [
            SizedBox(
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    padding: const EdgeInsets.all(5),
                    onPressed: onPressShowAnswers,
                    height: 30,
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("الاجابات",
                        style: AppTextStyles.regular16(context: context)
                            .copyWith(fontWeight: FontWeight.w500)),
                  ),
                  const Spacer(),
                  MaterialButton(
                    padding: const EdgeInsets.all(5),
                    onPressed: () {
                      context.pop();
                      context.pop();
                    },
                    height: 30,
                    color: AppColors.grayColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("خروج",
                        style: AppTextStyles.regular16(context: context)
                            .copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor)),
                  ),
                ],
              ),
            )
          ],
        );
      });
}
