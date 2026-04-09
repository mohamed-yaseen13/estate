import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LocationFieldContainer extends StatelessWidget {
  final bool isLocationSelected;
  final String? selectedAddress;

  const LocationFieldContainer({
    super.key,
    required this.isLocationSelected,
    this.selectedAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: isLocationSelected ? 133.h : 70.h,
      decoration: BoxDecoration(
        boxShadow: isLocationSelected
            ? [
                BoxShadow(
                  color: Colors.black.withAlpha(50),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ]
            : [],
        color: isLocationSelected ? Colors.white : AppColors.graySoft1,
        borderRadius: BorderRadius.circular(isLocationSelected ? 25.r : 12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
        child: isLocationSelected
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تفاصيل الموقع',
                    style: AppTextStyles
                        .grayDarkColorLatoBoldFamily700Weight18Size,
                  ),
                  verticalSpace(18),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/location_field_container_icon.svg',
                      ),
                      horizontalSpace(8),
                      Text(
                        selectedAddress ?? 'تفاصيل الموقع',
                        style: AppTextStyles
                            .grayMediumColorInterFamily400Weight12Size,
                      ),
                    ],
                  ),
                ],
              )
            : Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/location_icon.svg',
                    width: 24,
                    height: 24,
                  ),
                  horizontalSpace(8),
                  Text(
                    'تفاصيل الموقع',
                    style: AppTextStyles
                        .grayBarelyMediumColorRalewayRegularFamily400Weight12Size,
                  ),
                  Spacer(),
                  Icon(Icons.chevron_right, color: AppColors.grayBarelyMedium),
                ],
              ),
      ),
    );
  }
}
