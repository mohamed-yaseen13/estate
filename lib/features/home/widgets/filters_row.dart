import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FiltersRow extends StatefulWidget {
  const FiltersRow({super.key});

  @override
  State<FiltersRow> createState() => _FiltersRowState();
}

class _FiltersRowState extends State<FiltersRow> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Row(
          children: List.generate(AppConstants.filters.length, (index) {
            final isSelected = _selectedIndex == index;
            return Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: FilterContainer(
                label: AppConstants.filters[index],
                isSelected: isSelected,
                onTap: () => setState(() {
                  _selectedIndex = index;
                }),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class FilterContainer extends StatelessWidget {
  const FilterContainer({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryDarkBlue : AppColors.graySoft1,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: Text(
            label,
            style: isSelected
                ? AppTextStyles
                      .graySoft1ColorRalewatFontFamily700FontWeight10FontSize
                : AppTextStyles
                      .grayDarkColorRalewayFontFamily500FontWeight10FontSize,
          ),
        ),
      ),
    );
  }
}
