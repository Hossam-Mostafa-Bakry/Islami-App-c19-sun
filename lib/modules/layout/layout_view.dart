import 'package:flutter/material.dart';
import 'package:islami_app_c19_sun/core/gen/assets.gen.dart';
import 'package:islami_app_c19_sun/core/theme/app_colors.dart';
import 'package:islami_app_c19_sun/modules/layout/hadith/hadith_view.dart';
import 'package:islami_app_c19_sun/modules/layout/quran/quran_view.dart';
import 'package:islami_app_c19_sun/modules/layout/radio/radio_view.dart';
import 'package:islami_app_c19_sun/modules/layout/tasbeeh/tasbeeh_view.dart';
import 'package:islami_app_c19_sun/modules/layout/timer/timer_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    QuranView(),
    HadithView(),
    TasbeehView(),
    RadioView(),
    TimerView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "Quran",
            icon: Assets.icons.quranSelectedIcn.svg(
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Assets.icons.quranSelectedIcn.svg(width: 20, height: 20),
            ),
          ),
          BottomNavigationBarItem(
            label: "Hadith",
            icon: Assets.icons.hadithSelectedIcn.svg(
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Assets.icons.hadithSelectedIcn.svg(width: 20, height: 20),
            ),
          ),
          BottomNavigationBarItem(
            label: "Tasbeeh",
            icon: Assets.icons.sebhaSelectedIcn.svg(
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Assets.icons.sebhaSelectedIcn.svg(width: 20, height: 20),
            ),
          ),
          BottomNavigationBarItem(
            label: "Radio",
            icon: Assets.icons.radioSelectedIcn.svg(
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Assets.icons.radioSelectedIcn.svg(width: 20, height: 20),
            ),
          ),
          BottomNavigationBarItem(
            label: "Timer",
            icon: Assets.icons.timeSelectedIcn.svg(
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Assets.icons.timeSelectedIcn.svg(width: 20, height: 20),
            ),
          ),
        ],
      ),
    );
  }
}
