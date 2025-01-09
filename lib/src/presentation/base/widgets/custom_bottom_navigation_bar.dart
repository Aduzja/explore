import 'package:explore/src/application/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: BottomNavigationBar(
        backgroundColor: AppColors.lightGrey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/home.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/home_filled.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.darkGrey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Śląskie.',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/news.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/news_filled.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.darkGrey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Aktualności',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/calendar.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/calendar_filled.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.darkGrey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Wydarzenia',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/explore.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/explore_filled.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.darkGrey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Eksploruj',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: AppColors.darkGrey,
        selectedLabelStyle: GoogleFonts.roboto(
          fontWeight: FontWeight.w900,
          fontSize: 11,
        ),
        unselectedLabelStyle: GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
    );
  }
}
