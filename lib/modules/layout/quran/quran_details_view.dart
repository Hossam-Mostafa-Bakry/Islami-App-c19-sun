import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c19_sun/core/theme/app_colors.dart';
import 'package:islami_app_c19_sun/models/sura_data_model.dart';
import 'package:islami_app_c19_sun/modules/layout/quran/widgets/quran_details_background_view.dart';

class QuranDetailsView extends StatefulWidget {
  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final suraDataModel =
        ModalRoute.of(context)?.settings.arguments as SuraDataModel;

    /// sync
    if (verses.isEmpty) loadDataFromFiles(suraDataModel.suraNumber);

    return Scaffold(
      appBar: AppBar(title: Text(suraDataModel.suranNameEN)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          children: [
            QuranDetailsBackgroundView(suraDataModel: suraDataModel),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 75.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    "{${index+1}} ${verses[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: AppColors.primary,
                      height: 1.4
                    ),
                  );
                },
                itemCount: verses.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> verses = [];

  /// async vs sync
  Future<void> loadDataFromFiles(int suraIndex) async {
    String content = await rootBundle.loadString(
      "assets/files/quran/$suraIndex.txt",
    );

    verses = content.split("\n");
    setState(() {});
    log(content);
  }
}
