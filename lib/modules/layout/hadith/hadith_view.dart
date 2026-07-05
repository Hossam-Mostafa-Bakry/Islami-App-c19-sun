import 'package:flutter/material.dart';
import 'package:islami_app_c19_sun/core/gen/assets.gen.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.hadithBackgropundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
    );;
  }
}
