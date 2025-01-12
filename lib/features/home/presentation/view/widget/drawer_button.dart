import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';

class DrawrButton extends StatelessWidget {
  const DrawrButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu),
          color: AppColors.whiteColor,
        )
      ],
    );
  }
}
