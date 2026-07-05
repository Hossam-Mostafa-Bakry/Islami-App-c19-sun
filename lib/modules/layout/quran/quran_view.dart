import 'package:flutter/material.dart';
import 'package:islami_app_c19_sun/core/gen/assets.gen.dart';
import 'package:islami_app_c19_sun/core/theme/app_colors.dart';

/// versioned vs un-versioned
class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.quranBackgroundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Assets.images.headerImg.image(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              cursorColor: AppColors.primary,
              decoration: InputDecoration(
                hintText: 'Sura Name',
                hintStyle: theme.textTheme.bodyLarge,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(width: 1, color: AppColors.primary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(width: 1, color: AppColors.primary),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(width: 1, color: AppColors.primary),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Assets.icons.quranSelectedIcn.svg(
                    colorFilter: ColorFilter.mode(
                      AppColors.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
