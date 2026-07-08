import 'package:flutter/material.dart';
import 'package:islami_app_c19_sun/core/gen/assets.gen.dart';
import 'package:islami_app_c19_sun/models/sura_data_model.dart';

class SuraItem extends StatelessWidget {
  final void Function()? onTap;
  final SuraDataModel suraDataModel;

  const SuraItem({super.key, required this.onTap, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.icons.suraNumberFrameIcn.provider(),
              ),
            ),
            child: Text(
              suraDataModel.suraNumber.toString(),
              style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraDataModel.suranNameEN,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                "${suraDataModel.versesCount} Verses",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraDataModel.suranNameAR,
            style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
