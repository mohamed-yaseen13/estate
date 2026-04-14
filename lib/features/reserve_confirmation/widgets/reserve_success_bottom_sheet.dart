import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ReserveSuccessBottomSheet extends StatelessWidget {
  const ReserveSuccessBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 42.w,
            height: 5.h,
            decoration: BoxDecoration(
              color: AppColors.graySoft2,
              borderRadius: BorderRadius.circular(100.r),
            ),
          ),
          verticalSpace(24),
          SvgPicture.asset('assets/images/reserve_success_image.svg'),
          verticalSpace(24),
          Text(
            'تهانينا، تم حجزك بنجاح',
            style: AppTextStyles.secondaryGray8ColorInterFamily600Weight20Size,
          ),
          verticalSpace(12),
          Text(
            'لقد حجزت العقار بنجاح، استمتع بإقامتك.',
            style: AppTextStyles.secondaryGray4ColorInterFamily400Weight14Size,
          ),
          verticalSpace(24),
          AppButton(onPressed: () {}, desc: 'تفاصيل الحجز'),
        ],
      ),
    );
  }
}
