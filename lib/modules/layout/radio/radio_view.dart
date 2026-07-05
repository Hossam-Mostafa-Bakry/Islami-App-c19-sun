import 'package:flutter/material.dart';
import 'package:islami_app_c19_sun/core/gen/assets.gen.dart';

class RadioView extends StatelessWidget {
  const RadioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.radioBackgroundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
