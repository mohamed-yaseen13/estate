import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/features/estate_details/models/estate_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SellerDetails extends StatelessWidget {
  const SellerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final EstateDetailsModel estate = AppConstants.estate;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'تفاصيل البائع',
          style: AppTextStyles.secondaryGray8ColorInterFamily600Weight16Size,
        ),
        verticalSpace(8),
        Row(
          children: [
            Container(
              width: 52.w,
              height: 52.w,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(52.r),
                child: Image.asset(estate.sellerImagePAth, fit: BoxFit.cover),
              ),
            ),
            horizontalSpace(12),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  estate.sellerName,
                  style: AppTextStyles
                      .secondaryGray8ColorInterFamily600Weight14Size,
                ),
                Text(
                  estate.sellerJob,
                  style: AppTextStyles
                      .secondaryGray4ColorInterFamily400Weight12Size,
                ),
              ],
            ),
            Spacer(),
            SvgPicture.asset('assets/icons/phone_icon.svg'),
            horizontalSpace(8),
            SvgPicture.asset('assets/icons/chat_icon.svg'),
          ],
        ),
      ],
    );
  }
}
