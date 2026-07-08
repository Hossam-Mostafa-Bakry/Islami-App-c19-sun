import 'package:flutter/material.dart';
import 'package:islami_app_c19_sun/core/gen/assets.gen.dart';
import 'package:islami_app_c19_sun/core/theme/app_colors.dart';
import 'package:islami_app_c19_sun/models/sura_data_model.dart';

class QuranDetailsBackgroundView extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const QuranDetailsBackgroundView({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Assets.images.leftCornerImg.image(width: 90, height: 90),
            Text(
              suraDataModel.suranNameAR,
              style: theme.textTheme.headlineSmall?.copyWith(
                color: AppColors.primary,
              ),
            ),
            Assets.images.rightCornerImg.image(width: 90, height: 90),
          ],
        ),
        Spacer(),
        Assets.images.bottomDecorationImg.image(),
      ],
    );
  }
}
