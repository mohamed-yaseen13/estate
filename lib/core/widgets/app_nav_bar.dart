import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppNavBar extends StatefulWidget {
  final AppNavBarEnum selectedScreen;

  const AppNavBar({super.key, required this.selectedScreen});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  String _enumToRoute(AppNavBarEnum screen) {
    switch (screen) {
      case AppNavBarEnum.profile:
        return AppRoutes.profileScreen;
      case AppNavBarEnum.main:
        return AppRoutes.homeScreen;
      case AppNavBarEnum.like:
        return AppRoutes.likeScreen;
      case AppNavBarEnum.reserve:
        return AppRoutes.reserveScreen;
    }
  }

  Widget _buildNavItem({
    required String iconPath,
    required String selectedIconPath,
    required String label,
    required AppNavBarEnum screen,
  }) {
    final bool isSelected = widget.selectedScreen == screen;

    return GestureDetector(
      onTap: () {
        if (screen != widget.selectedScreen) {
          context.pushNamed(_enumToRoute(screen));
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(isSelected ? selectedIconPath : iconPath),
          verticalSpace(4),
          Text(
            label,
            style: isSelected
                ? AppTextStyles.primaryDarkBlueColorInterFamily500Weight10Size
                : AppTextStyles.secondaryGray4ColorInterFamily500Weight10Size,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      elevation: 8,
      color: AppColors.mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            selectedIconPath: 'assets/icons/home_selected.svg',
            iconPath: 'assets/icons/home.svg',
            label: 'الرئيسيه',
            screen: AppNavBarEnum.main,
          ),
          _buildNavItem(
            selectedIconPath: 'assets/icons/reserve_selected.svg',
            iconPath: 'assets/icons/reserve.svg',
            label: 'الحجوزات',
            screen: AppNavBarEnum.reserve,
          ),
          horizontalSpace(48),
          _buildNavItem(
            selectedIconPath: 'assets/icons/like_selected.svg',
            iconPath: 'assets/icons/like.svg',
            label: 'المفضله',
            screen: AppNavBarEnum.like,
          ),
          _buildNavItem(
            selectedIconPath: 'assets/icons/profile.svg',
            iconPath: 'assets/icons/profile.svg',
            label: 'حسابي',
            screen: AppNavBarEnum.profile,
          ),
        ],
      ),
    );
  }
}
