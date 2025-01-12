import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/core/utils/app_assets.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';
import 'package:islamic_questions/features/home/presentation/view/widget/custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.blackColor,
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  Assets.imagesSplashLogo,
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "أسئلة اسلامية",
                style: AppTextStyles.bold19(context: context)
                    .copyWith(color: AppColors.whiteColor),
              )
            ],
          )),
          CustomDrawerItem(
            icon: Icons.home,
            onPress: () {
              context.pop();
            },
            title: "الصفحة الرئيسية",
          ),
          const Divider(
            height: 5,
          ),
          CustomDrawerItem(
            icon: Icons.reviews,
            onPress: () {},
            title: "تقييم التطبيق",
          ),
          const Divider(
            height: 5,
          ),
          CustomDrawerItem(
            icon: Icons.share,
            onPress: () {},
            title: "مشاركة التطبيق",
          ),
          const Divider(
            height: 5,
          ),
          CustomDrawerItem(
            icon: Icons.more,
            onPress: () {},
            title: "المزيد من التطبيقات",
          ),
          const Divider(
            height: 5,
          ),
        ],
      ),
    );
  }
}
