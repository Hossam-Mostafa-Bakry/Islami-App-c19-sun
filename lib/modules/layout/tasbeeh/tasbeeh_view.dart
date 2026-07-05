import 'package:flutter/material.dart';
import 'package:islami_app_c19_sun/core/gen/assets.gen.dart';

class TasbeehView extends StatelessWidget {
  const TasbeehView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.tasbeehBackgroundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
